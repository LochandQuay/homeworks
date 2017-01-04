import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

// FOR TESTING
import {receiveSearchGiphys, fetchSearchGiphys} from './actions/giphy_actions';

document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();
  ReactDOM.render(<Root store={store} />, document.getElementById('root'));
});

const store = configureStore();
window.store = store;
window.fetchSearchGiphys = fetchSearchGiphys;
window.receiveSearchGiphys = receiveSearchGiphys;
