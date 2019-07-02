import React from 'react';
const DefaultLayout = React.lazy(() => import('../common/DefaultLayout'));
const ListView = React.lazy(() => import('./ListView'));
const DetailView = React.lazy(() => import('./DetailView'));
const EditView = React.lazy(() => import('./EditView'));

export default {
  path: '${_.kebabCase(name)}',
  component: DefaultLayout,
  childRoutes: [
    { path: 'list', name: 'List View', component: ListView },
    { path: 'view/:id', name: 'Detail View', component: DetailView },
    { path: 'edit/:id', name: 'Edit View', component: EditView },
  ],
};