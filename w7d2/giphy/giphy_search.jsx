import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

const store = configureStore();

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store}/>, root);
});

// testing
// import { fetchSearchGiphys } from "./util/api_util";
// import { receiveSearchGiphys } from "./actions/giphy_actions";
//
// window.store = store;
// store.getState();
// //should return the initial state object, including the empty giphys array
//
// const fetchSuccess = giphys => store.dispatch(receiveSearchGiphys(giphys));
// fetchSearchGiphys("puppies").then(fetchSuccess);
//
// store.getState();
// // should return the app state populated with puppy giphys
