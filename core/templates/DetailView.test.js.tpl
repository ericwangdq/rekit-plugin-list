import React from 'react';
import { shallow } from 'enzyme';
import { DetailView } from '../../../src/features/${_.kebabCase(name)}';

it('renders node with correct class name', () => {
  const renderedComponent = shallow(<DetailView />);
  expect(renderedComponent.find('.${_.kebabCase(name)}-detail-view}').length).toBe(1);
});