import PropTypes from 'prop-types';
import React from 'react';
import { connect } from 'react-redux';

export const App = class extends React.Component {
  render() {
    return (
      <div>Hello {this.props.name}!</div>
    );
  }
};

App.defaultProps = {
  name: 'David',
};

App.propTypes = {
  name: PropTypes.string,
};

const mapStateToProps = (state) => {
  return {
    name: state.checklists.get('name'),
  };
};

export default connect(mapStateToProps)(App);
