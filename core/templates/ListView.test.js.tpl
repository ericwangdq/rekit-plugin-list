import React from 'react';
import { shallow } from 'enzyme';
import { ListView } from '../../../src/features/${_.kebabCase(name)}';

it('renders node with correct class name', () => {
  const renderedComponent = shallow(<ListView />);
  expect(renderedComponent.find('.${_.kebabCase(name)}-list-view}').length).toBe(1);
});