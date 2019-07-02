import React, { Component } from 'react';

export default class EditView extends Component {
  static propTypes = {
  };

  render() {
    return (
      <div className="edit-view ${_.kebabCase(name)}-edit-view">
        EditView content: ${_.kebabCase(name)}
      </div>
    );
  }
}