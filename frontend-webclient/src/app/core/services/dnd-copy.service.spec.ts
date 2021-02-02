import { TestBed } from '@angular/core/testing';

import { DndCopyService } from './dnd-copy.service';

describe('DndCopyService', () => {
  let service: DndCopyService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(DndCopyService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
