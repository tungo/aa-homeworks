import React from 'react';

import GiphysIndexItem from './giphys_index_item';

const GiphysIndex = (props) => (
  <ul>
    {
      props.giphys.map((giphy, idx) => <GiphysIndexItem key={idx} giphy={giphy} />)
    }
  </ul>
);

export default GiphysIndex;
