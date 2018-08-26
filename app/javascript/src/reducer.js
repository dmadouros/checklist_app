import { Map } from 'immutable';

const INITIAL_STATE = Map({
  name: 'Mark',
});

export default (state = INITIAL_STATE, action) => {
  return state;
}
