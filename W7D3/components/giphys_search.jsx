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
    e.preventDefault();
    this.setState( { searchTerm: e.target.value });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.fetchSearchGiphys(this.state.searchTerm);
  }

  render() {
    return (
      <div>
        <h1>Giphy Search!</h1>
        <form onSubmit={this.handleSubmit}>
          <input
            onChange={this.handleChange}
            className="search-bar"
            placeholder="You'll be disappointed..."
            value={this.state.searchTerm} />
          <button>Search Giphys!</button>
        </form>

        <GiphysIndex giphys={this.props.giphys} />
      </div>
    );
  }
}

export default GiphysSearch;
