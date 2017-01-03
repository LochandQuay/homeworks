import { createStore } from 'redux';
import RootReducer from '../reducers/root_reducer';
import { applyMiddleware } from 'redux';

const configureStore = (preloadedState = {}) => {
  return createStore(
    RootReducer,
    preloadedState,
    applyMiddleware(addLoggingToDispatch)
  );

  // const store = createStore(RootReducer, preloadedState);
  // store.subscribe(() => {
  //   localStorage.state = JSON.stringify(store.getState());
  // });
  // return store;
}

const addLoggingToDispatch = store => next => action => {
  const oldDispatch = store.dispatch;
  console.log(store.getState());
  console.log("Action:", action);
  const result = oldDispatch(action);
  console.log(store.getState());
  return result;
};

export default configureStore;
