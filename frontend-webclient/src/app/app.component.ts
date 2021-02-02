import { Component, OnInit } from '@angular/core';
import { AuthenticationService } from './core/authentication/authentication.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {
  title = 'webclient';
  isLoggedIn = false;

  constructor(private authenticationService: AuthenticationService) { }

  ngOnInit() {
    this.authenticationService.getCurrentUserSubject().subscribe({
      next: (user) => this.isLoggedIn = user != null
    });
  }
}
