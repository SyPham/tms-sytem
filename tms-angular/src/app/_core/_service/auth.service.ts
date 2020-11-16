import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { map } from 'rxjs/operators';

import { User } from '../_model/user';
import { JwtHelperService } from '@auth0/angular-jwt';
import { environment } from '../../../environments/environment';
import { LoggedInUser } from '../_model/LoggedInUser';
import { BehaviorSubject, Observable } from 'rxjs';
import { CookieService } from 'ngx-cookie-service';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  baseUrl = environment.apiUrl + 'auth/authenticate';
  jwtHelper = new JwtHelperService();
  currentUser: User;
  decodedToken: any;
  refreshTokenTimeout: NodeJS.Timeout;
  private userSubject: BehaviorSubject<User>;
  public user: Observable<User>;
  constructor(private http: HttpClient, private cookieService: CookieService) {
    this.userSubject = new BehaviorSubject<User>(null);
    this.user = this.userSubject.asObservable();
}

  login(model: any) {
    return this.http.post(this.baseUrl, model, { withCredentials: true }).pipe(
      map((response: any) => {
        const data = response;
        if (data) {
          const token = data.Token;
          const revokeToken = data.RefreshToken;
          const user = data.User;
          localStorage.setItem('token', token);
          localStorage.setItem('revokeToken', revokeToken);
          localStorage.setItem('user', JSON.stringify(user));
          localStorage.setItem('avatar', user.image);
          // this.cookieService.set('refreshToken', revokeToken, 365);
          this.decodedToken = this.jwtHelper.decodeToken(token);
          this.currentUser = user;
          this.userSubject.next(user);
          this.startRefreshTokenTimer();
          return user;
        }
      })
    );
  }

  loggedIn() {
    const token = localStorage.getItem('token');
    return !this.jwtHelper.isTokenExpired(token);
  }
  revokeToken() {
    this.http.post(`${environment.apiUrl}auth/revoke-token`, {}, { withCredentials: true }).subscribe();
  }
  refreshToken() {
    return this.http.post<any>(`${environment.apiUrl}auth/refresh-token`, {}, { withCredentials: true })
        .pipe(map((user) => {
            localStorage.setItem('token', user.Token);
            this.startRefreshTokenTimer();
            return user;
        }));
}
logout() {
  this.revokeToken();
  this.cookieService.deleteAll();
  this.stopRefreshTokenTimer();
  this.userSubject.next(null);
  this.decodedToken = null;
  this.currentUser = null;
  localStorage.clear();
  this.cookieService.deleteAll();
}
public get userValue(): User {
  return this.userSubject.value;
}
private startRefreshTokenTimer() {
    // parse json object from base64 encoded jwt token
    const token = localStorage.getItem('token');
    const jwtToken = JSON.parse(atob(token.split('.')[1]));

    // set a timeout to refresh the token a minute before it expires
    const expires = new Date(jwtToken.exp * 1000);
    const timeout = expires.getTime() - Date.now() - (60 * 1000);
    this.refreshTokenTimeout = setTimeout(() => this.refreshToken().subscribe(), timeout);
    // const expires = new Date(jwtToken.exp * 1000);
    // const timeout = expires.getTime() - Date.now() - (60 * 1000);
    // this.refreshTokenTimeout = setTimeout(() => {
    //   console.log('Chuan bi refresh token nha');
    //   this.refreshToken().subscribe();
    // } , 10000);
}

private stopRefreshTokenTimer() {
    clearTimeout(this.refreshTokenTimeout);
}
  roleMatch(allowedRoles): boolean {
    let isMatch = false;
    const userRoles = this.decodedToken.role as Array<string>;
    allowedRoles.forEach(element => {
      if (userRoles.includes(element)) {
        isMatch = true;
        return;
      }
    });
    return isMatch;
  }
  getLoggedInUser(): LoggedInUser {
    let user: LoggedInUser;
    if (this.loggedIn()) {
      const userData = JSON.parse(localStorage.getItem('user'));
      const accessToken = JSON.parse(localStorage.getItem('token'));
      user = new LoggedInUser(accessToken, userData.Username, '', '',
                              userData.image, userData.Role,
                              userData.permissions, userData.oCLevel,
                              userData.isLeader, userData.ocLevel  );
    } else {
      user = null;
    }
    return user;
  }
}
