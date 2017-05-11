import React from 'react';

const GiphysIndexItem = (props) => (
  <li className="giphy-li">
    <img src={props.giphy.images.fixed_height.url} />
  </li>
);

export default GiphysIndexItem;
