import { expect } from 'chai';
import { Map } from 'immutable';
import reducer from 'src/reducer';

describe('reducer', () => {
  const initialState = Map({
    name: 'Mark',
  });

  it('should return initial state', () => {
    const result = reducer(undefined, {});

    expect(result).to.deep.equal(initialState);
  });
});
