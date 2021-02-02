import { ComponentFixture, TestBed } from '@angular/core/testing';

import { WidgetEditorDialogComponent } from './widget-editor-dialog.component';

describe('WidgetEditorDialogComponent', () => {
  let component: WidgetEditorDialogComponent;
  let fixture: ComponentFixture<WidgetEditorDialogComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ WidgetEditorDialogComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(WidgetEditorDialogComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
