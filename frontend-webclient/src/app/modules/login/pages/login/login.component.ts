import { Component, OnInit } from '@angular/core';
import { AuthenticationService } from 'src/app/core/authentication/authentication.service';
import { FormBuilder, FormGroup, Validators, AbstractControl } from '@angular/forms';
import { Router } from '@angular/router';
import { trigger, style, transition, animate } from '@angular/animations';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
  animations: [
    trigger('slideInOut', [
      // transition(':enter', [
      //   style({ transform: 'translateY(-200%)' }),
      //   animate('200ms ease-in', style({ transform: 'translateY(0%)', height: 'initial' }))
      // ]),
      transition(':leave', [
        animate('200ms ease-in', style({ transform: 'translateY(100%)', opacity: 0, height: 0 }))
      ])
    ])
  ]
})
export class LoginComponent implements OnInit {

  loginForm: FormGroup;
  isSubmitted = false;

  constructor(
    private fb: FormBuilder,
    private authenticationService: AuthenticationService,
    private router: Router
  ) { }

  ngOnInit(): void {
    this.loginForm = this.fb.group({
      username: ['', Validators.required],
      password: ['', Validators.required]
    });

    this.loginForm.valueChanges.subscribe(() => this.isSubmitted = false);
  }

  get username(): AbstractControl {
    return this.loginForm.get('username');
  }

  get password(): AbstractControl {
    return this.loginForm.get('password');
  }

  login(): void {
    if (this.isSubmitted) return;

    if (this.loginForm.invalid) {
      this.loginForm.markAllAsTouched();
    } else {
      const { username, password } = this.loginForm.controls;
      this.authenticationService.login(username.value, password.value).subscribe(
        () => this.router.navigate(['group']),
        response => {
          if (response.status === 401) {
            this.loginForm.markAsUntouched();
            this.isSubmitted = true;
          }
        }
      );
    }
  }
}
