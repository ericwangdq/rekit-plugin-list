import React, { Component } from 'react';

export default class DetailView extends Component {
  static propTypes = {
  };

  render() {
    return (
      <div className="detail-view ${_.kebabCase(name)}-detail-view">
        DetailView content: ${_.kebabCase(name)}
      </div>
    );
  }
}