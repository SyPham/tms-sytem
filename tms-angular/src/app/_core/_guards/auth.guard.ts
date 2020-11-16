import { Injectable } from '@angular/core';
import { AuthService } from '../_service/auth.service';
import { CanActivate, Router, ActivatedRoute, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { Role } from '../_model/role';
import { AlertifyService } from '../_service/alertify.service';
@Injectable({
  providedIn: 'root'
})
export class AuthGuard implements CanActivate {
  constructor(
    private authService: AuthService,
    private router: Router,
    private alertify: AlertifyService,
    private route: ActivatedRoute) { }
  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): boolean {
    if (this.authService.loggedIn()) {
      this.checkRole(route, state);
      return true;
    }
    this.router.navigate(['login'], { queryParams: { uri: state.url } });
    return false;
  }
  checkRole(route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
    const user = JSON.parse(localStorage.getItem('user'));
    if (user) {
      // check if route is restricted by role
      const role = route.data.role;
      if (role && role !== user.Role) {
        // role not authorised so redirect to home page
        this.authService.logout();
        this.router.navigate(['login'], { queryParams: { uri: state.url } });
        return false;
      }
      // authorised so return true
    }
  }

}


