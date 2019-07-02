// const template = require('rekit-core').template;
const _ = require('lodash');

module.exports = {
  afterAddFeature(name, args) {
    console.log('after add feature:', name, args);
    if (args.listView) {
      console.log('Generate listview and detail view: ' + new Date());
      // const tpl = 'hello ${user}!';
      // rekit.core.template.generate(`src/features/${_.kebabCase(name)}/ListView.js`, { template: tpl, context: { user: 'Eric' } });
      //console.log(__dirname);

      // templates: https://github.com/rekit/rekit-core/tree/master/plugins/rekit-react/templates
      // generate list view, detail view, edit view
      rekit.core.template.generate(`src/features/${_.kebabCase(name)}/ListView.js`, {
        templateFile: `${__dirname}/templates/ListView.js.tpl`,
        context: args,
      });
      rekit.core.template.generate(`src/tests/features/${_.kebabCase(name)}/ListView.js`, {
        templateFile: `${__dirname}/templates/ListView.test.js.tpl`,
        context: args,
      });
      rekit.core.template.generate(`src/features/${_.kebabCase(name)}/ListView.less`, {
        templateFile: `${__dirname}/templates/ListView.less.tpl`,
        context: args,
      });

      // generate detailview
      rekit.core.template.generate(`src/features/${_.kebabCase(name)}/DetailView.js`, {
        templateFile: `${__dirname}/templates/DetailView.js.tpl`,
        context: args,
      });
      rekit.core.template.generate(`src/tests/features/${_.kebabCase(name)}/DetailView.js`, {
        templateFile: `${__dirname}/templates/DetailView.test.js.tpl`,
        context: args,
      });
      rekit.core.template.generate(`src/features/${_.kebabCase(name)}/DetailView.less`, {
        templateFile: `${__dirname}/templates/DetailView.less.tpl`,
        context: args,
      });

      // generate editview
      rekit.core.template.generate(`src/features/${_.kebabCase(name)}/EditView.js`, {
        templateFile: `${__dirname}/templates/EditView.js.tpl`,
        context: args,
      });
      rekit.core.template.generate(`src/tests/features/${_.kebabCase(name)}/EditView.js`, {
        templateFile: `${__dirname}/templates/EditView.test.js.tpl`,
        context: args,
      });
      rekit.core.template.generate(`src/features/${_.kebabCase(name)}/EditView.less`, {
        templateFile: `${__dirname}/templates/EditView.less.tpl`,
        context: args,
      });

      //modify route.js
      rekit.core.template.generate(`src/features/${_.kebabCase(name)}/route.js`, {
        templateFile: `${__dirname}/templates/route.js.tpl`,
        context: args,
      });

      //modify index.js
      rekit.core.template.generate(`src/features/${_.kebabCase(name)}/index.js`, {
        templateFile: `${__dirname}/templates/index.js.tpl`,
        context: args,
      });

      //modify style.less
      rekit.core.template.generate(`src/features/${_.kebabCase(name)}/style.less`, {
        templateFile: `${__dirname}/templates/style.less.tpl`,
        context: args,
      });
    }
  },
};
