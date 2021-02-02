import { Resolve, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { Layout } from 'src/app/shared/models/layout.model';
import { Injectable } from '@angular/core';
import { ApiService } from '../services/api.service';
import { CUSTOM_TYPE_REGEX } from 'src/app/configs/constants.config';
import { WidgetOption } from 'src/app/shared/models/widget-option.model';

@Injectable({
  providedIn: 'root'
})
export class LayoutResolver implements Resolve<Layout> {

  constructor(
    private apiService: ApiService
  ) { }

  async resolve(route: ActivatedRouteSnapshot, _state: RouterStateSnapshot): Promise<Layout> {
    const layoutId = route.paramMap.get('layoutId');
    // Get the layout
    const layout: Layout = await this.apiService
      .getLayoutById(+layoutId)
      .toPromise();

    layout.regions.forEach(region => {
      region.regionPlaylist.widgets.forEach(widget => {
        const nameField: WidgetOption = widget.widgetOptions.find(wo => wo.option === 'name');
        const name: string = nameField?.value;
        const matches = CUSTOM_TYPE_REGEX.exec(name);
        if (matches != null) {
          widget.customType = matches[1];
          nameField.value = name.replace(CUSTOM_TYPE_REGEX, '').trim();
        }
      });
    });

    return Promise.resolve(layout);
  }
}
