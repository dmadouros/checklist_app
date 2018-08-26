import chai, { expect } from 'chai';
import chaiEnzyme from 'chai-enzyme';
import Enzyme, { shallow } from 'enzyme';
import Adapter from 'enzyme-adapter-react-16';
import React from 'react';
import { App } from 'src/app';

Enzyme.configure({ adapter: new Adapter() });
chai.use(chaiEnzyme());

describe('App', () => {
  describe('#render', () => {
    context('when no name argument provided', () => {
      it('should render "Hello, David"', () => {
        const wrapper = shallow(<App />);

        expect(wrapper.find('div')).to.have.text('Hello David!');
      });
    });

    context('when name argument provided', () => {
      it('should render "Hello, {name}"', () => {
        const wrapper = shallow(<App name="Mark" />);

        expect(wrapper.find('div')).to.have.text('Hello Mark!');
      });
    });
  });
});
