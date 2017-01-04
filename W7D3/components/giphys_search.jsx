import React, { Component } from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);
    this.state = { searchTerm: "" }

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e) {

  }

  handleSubmit(e) {

  }

  render() {
    return (
      <div>
        <form>
          <input>

          </input>

          <button onClick={this.handleSubmit}>Search Giphys!</button>
        </form>
      </div>
    );
  }
}

export default GiphysSearch;
