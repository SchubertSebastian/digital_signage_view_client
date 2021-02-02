import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ApiMediaComponent } from './api-media.component';

describe('ApiMediaComponent', () => {
  let component: ApiMediaComponent;
  let fixture: ComponentFixture<ApiMediaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ApiMediaComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ApiMediaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
