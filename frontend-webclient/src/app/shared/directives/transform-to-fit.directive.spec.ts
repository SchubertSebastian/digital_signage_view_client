import { ElementRef } from '@angular/core';
import { inject } from '@angular/core/testing';
import { TransformToFitParentDirective } from './transform-to-fit.directive';

describe('TransformToFitParentDirective', () => {
  it('should create an instance', inject([ElementRef], (elementRef: ElementRef) => {
    const directive = new TransformToFitParentDirective(elementRef);
    expect(directive).toBeTruthy();
  }));
});
