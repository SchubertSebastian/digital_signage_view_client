import { Component } from '@angular/core';
import { AuthenticationService } from '../authentication/authentication.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss']
})
export class HeaderComponent {

  username: string = '';

  constructor(
    private authenticationService: AuthenticationService,
    private router: Router
  ) { }

  logout(): void {
    this.authenticationService.logout();
    this.router.navigate(['login']);
  }
}
