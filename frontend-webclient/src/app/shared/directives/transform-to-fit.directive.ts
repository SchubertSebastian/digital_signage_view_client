import { Directive, ElementRef, HostBinding, HostListener, OnInit } from '@angular/core';

@Directive({
  selector: '[appTransformToFit]',
  host: {
    '[style.position]': '"relative"',
    '[style.left]': '"50%"',
    '[style.top]': '"50%"',
    '[style.transform-origin]': '"center center"'
  }
})
export class TransformToFitParentDirective implements OnInit {

  constructor(
    private elementRef: ElementRef
  ) { }

  ngOnInit(): void {
    this.scale();
  }

  @HostListener('window:resize', ['$event'])
  onResize(_) {
    this.scale();
  }

  private scale(): void {
    const element = this.elementRef.nativeElement as HTMLElement;
    const parent = element.parentElement;

    const scale = Math.min(
      (parent.clientWidth * 0.98) / element.clientWidth,
      (parent.clientHeight * 0.98) / element.clientHeight
    );

    element.style.transform = `translate(-50%, -50%) scale(${scale})`
  }
}
