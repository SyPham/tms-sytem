import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../_core/_service/auth.service';
import { AlertifyService } from '../../_core/_service/alertify.service';
import { Router, ActivatedRoute, RouterStateSnapshot } from '@angular/router';
import { UserForLogin } from 'src/app/_core/_model/user';
import { environment } from 'src/environments/environment';
import { CookieService } from 'ngx-cookie-service';
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  user: UserForLogin = {
    username: '',
    password: '',
    systemCode: environment.systemCode
  };
  uri: any;
  routerLinkAdmin = [
    '/admin/oc',
    '/admin/user',
    '/admin/oc-user',
    '/admin/role',
    '/admin/dash'
  ];
  remember: any;
  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private authService: AuthService,
    private cookieService: CookieService,
    private alertifyService: AlertifyService
  ) {
    this.route.queryParams.subscribe(params => {
      this.uri = params.uri;
    });
    if (this.cookieService.get('remember') !== undefined) {
      if (this.cookieService.get('remember') === 'Yes') {
        this.user = {
          username: this.cookieService.get('username'),
          password: this.cookieService.get('password'),
          systemCode: environment.systemCode
        };
        this.remember = true;
        this.login();
      }
    }
  }
  role: number;
  ngOnInit(): void {
  }
  onChangeRemember(args) {
    this.remember = args.target.checked;
  }
  login(): void {
    // console.log(this.user);
    this.authService.login(this.user).subscribe(
      next => {
        this.role = JSON.parse(localStorage.getItem('user')).Role;
        this.alertifyService.success('Login Success!!');
        if (this.remember) {
          this.cookieService.set('remember', 'Yes');
          this.cookieService.set('username', this.user.username);
          this.cookieService.set('password', this.user.password);
          this.cookieService.set('systemCode', this.user.systemCode.toString());
        } else {
          this.cookieService.delete('remember');
          this.cookieService.delete('username');
          this.cookieService.delete('password');
          this.cookieService.delete('systemCode');
        }
        this.checkRole();
      },
      error => {
        this.alertifyService.error('Login failed!!');
      },
      () => {
      }
    );
  }
  checkRoute(uri) {
    let flag = false;
    this.routerLinkAdmin.forEach(element => {
      if (uri.includes(element)) {
        flag = true;
      }
    });
    return flag;
  }
  checkRole() {
    const uri = decodeURI(this.uri);
    if (this.role === 1) {
      if (uri !== 'undefined') {
        if (this.checkRoute(uri)) {
          this.router.navigate([uri]);
        } else {
          this.router.navigate(['/admin/dash']);
        }
      } else {
        this.router.navigate(['/admin/dash']);
      }
    } else if (this.role === 2) {
      if (uri !== 'undefined') {
        if (!this.checkRoute(uri)) {
          this.router.navigate([uri]);
        } else {
          this.router.navigate(['/todolist']);
        }
      } else {
        this.router.navigate(['/todolist']);
      }
    }
  }
}
