import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
import { Region } from 'src/app/shared/models/region.model';
import { Row } from 'src/app/shared/models/row.model';
import { Widget } from 'src/app/shared/models/widget.model';

@Injectable({
  providedIn: 'root'
})
export class SelectedRowService {

  row: BehaviorSubject<Row> = new BehaviorSubject<Row>(null);

  
}
