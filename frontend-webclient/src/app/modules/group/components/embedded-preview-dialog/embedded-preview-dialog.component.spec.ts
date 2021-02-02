import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EmbeddedPreviewDialogComponent } from './embedded-preview-dialog.component';

describe('EmbeddedPreviewDialogComponent', () => {
  let component: EmbeddedPreviewDialogComponent;
  let fixture: ComponentFixture<EmbeddedPreviewDialogComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ EmbeddedPreviewDialogComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(EmbeddedPreviewDialogComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
