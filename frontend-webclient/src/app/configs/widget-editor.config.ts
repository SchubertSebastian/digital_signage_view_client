import { TextFormComponent } from 'src/app/modules/group/components/widget-forms/text-form/text-form.component';
import { DefaultFormComponent } from '../modules/group/components/widget-forms/default-form/default-form.component';
import { TextWithImageFormComponent } from '../modules/group/components/widget-forms/text-with-image-form/text-with-image-form.component';

export const typeEditor = {
  text: TextFormComponent,
  'Text with Image': TextWithImageFormComponent,
  default: DefaultFormComponent
};
