import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TextWithImageFormComponent } from './text-with-image-form.component';

describe('TextWithImageFormComponent', () => {
  let component: TextWithImageFormComponent;
  let fixture: ComponentFixture<TextWithImageFormComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TextWithImageFormComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(TextWithImageFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
