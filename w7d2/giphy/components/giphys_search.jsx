import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Component {
  constructor(props) {
    super(props);

    this.state = {searchTerm: ''};
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e) {
    e.preventDefault();

    let searchTerm = e.target.value;
    this.setState({searchTerm});
  }

  handleSubmit(e) {
    e.preventDefault();

    this.props.fetchSearchGiphys(this.state.searchTerm);
  }

  render() {
    return (
      <div>
        <form>
          <input type="text" onChange={this.handleChange} value={this.state.searchTerm} />
          <button onClick={this.handleSubmit}>Search Giphy</button>
        </form>
        <br />
        <GiphysIndex giphys={this.giphys} />
      </div>
    );
  }
}

export default GiphysSearch;
