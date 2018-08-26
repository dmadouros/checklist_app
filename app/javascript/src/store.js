import { applyMiddleware, combineReducers, compose, createStore } from 'redux';
import thunk from 'redux-thunk';
import checklists from './reducer';

export default createStore(combineReducers({
  checklists,
}), compose(applyMiddleware(thunk)));
