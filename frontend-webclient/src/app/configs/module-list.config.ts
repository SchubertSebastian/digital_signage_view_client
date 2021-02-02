import { Widget } from '../shared/models/widget.model';
import { MAX_INTEGER } from './constants.config';

export interface ModuleOption {
  label: string;
  icon: string;
  defaultWidgetValue: Widget;
}

const textModule: ModuleOption = {
  label: 'Text',
  icon: 'text_format',
  defaultWidgetValue: {
    widgetId: -1,
    playlistId: -1,
    duration: 30,
    fromDt: 0,
    toDt: MAX_INTEGER,
    type: 'text',
    mediaIds: [],
    widgetOptions: [
      {
        option: 'useDuration',
        value: '1'
      },
      {
        option: 'duration',
        value: '30'
      },
      {
        option: 'text',
        value: 'Enter some text...'
      }
    ],
    valid: false
  }
};

const imageWithTextModule: ModuleOption = {
  // TODO: Change me back
  // label: 'Text with Image',
  label: 'Museum Content Element',
  icon: 'chrome_reader_mode',
  defaultWidgetValue: {
    widgetId: -1,
    playlistId: -1,
    duration: 30,
    fromDt: 0,
    toDt: MAX_INTEGER,
    type: 'embedded',
    customType: 'Text with Image',
    mediaIds: [],
    widgetOptions: [
      {
        option: 'useDuration',
        value: '1'
      },
      {
        option: 'duration',
        value: '30'
      },
      {
        option: 'transparency',
        value: '1'
      },
      {
        option: 'embedStyle',
        value:
          `body {
            height: 100vh;
          }

          #content {
            height: 100%;
          }
          `
      },
      {
        option: 'embedHtml',
        value:
          `<div style="display: flex; height: 100%;">
            <div class="image" style="
              flex: 1 0 54%;
              background-size: cover;
              background-repeat: no-repeat;
              background-position: 50% 50%;
            "></div>
          <div id="text" style="flex-basis: 50%; margin-left: 120px;"></div>
        </div>`
      }
    ],
    valid: false
  }
};

export const moduleOptionList: ModuleOption[] = [
  textModule,
  imageWithTextModule
];
