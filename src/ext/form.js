import { Checkbox } from 'antd';
export default {
  fillMeta(args) {
    console.log('fill meta: ', args);
    switch (args.formId) {
      case 'core.element.add.feature':
        console.log('add feature with checkbox: ', args.formId);
        args.meta.elements.push({
            key: 'listView',
            label: '🔌List View',
            widget: Checkbox,
            initialValue: false,
        });
        break;
      default:
        break;
    }
  }
}