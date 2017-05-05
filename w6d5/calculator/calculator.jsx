import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);

    this.states = { result: 0, num1: "", num2: ""};
  }

  render() {
    return (
      <div>
        <h1>Hello world!</h1>
      </div>
    );
  }
}

export default Calculator;
