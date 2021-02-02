import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { GroupComponent } from './pages/group/group.component';
import { GroupDetailComponent } from './pages/group-detail/group-detail.component';
import { LayoutResolver } from 'src/app/core/resolvers/layout.resolver';

const routes: Routes = [
  { path: '', component: GroupComponent },
  { path: ':layoutId', component: GroupDetailComponent, resolve: { layout: LayoutResolver } }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class GroupRoutingModule { }
