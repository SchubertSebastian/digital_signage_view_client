import { Component, OnInit } from '@angular/core';
import { ApiService } from 'src/app/core/services/api.service';
import { Layout } from 'src/app/shared/models/layout.model';
import { Router } from '@angular/router';

@Component({
  selector: 'app-group',
  templateUrl: './group.component.html',
  styleUrls: ['./group.component.scss']
})
export class GroupComponent implements OnInit {

  layouts: Layout[] = [];

  constructor(
    private router: Router,
    private apiService: ApiService
  ) { }

  ngOnInit(): void {
    this.apiService.getAllLayouts()
      .subscribe(layouts => this.layouts = layouts);
  }

  navigateToGroup(layout: Layout): void {
    this.router.navigate(['group', layout.layoutId]);
  }
}
