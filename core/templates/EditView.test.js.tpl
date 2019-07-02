import React from 'react';
import { shallow } from 'enzyme';
import { EditView } from '../../../src/features/${_.kebabCase(name)}';

it('renders node with correct class name', () => {
  const renderedComponent = shallow(<EditView />);
  expect(renderedComponent.find('.${_.kebabCase(name)}-edit-view}').length).toBe(1);
});