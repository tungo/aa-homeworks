import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);

    this.state = { result: 0, num1: "", num2: ""};

    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);

    this.plus = this.plus.bind(this);
    this.minus = this.minus.bind(this);
    this.time = this.time.bind(this);
    this.divide = this.divide.bind(this);

    this.clear = this.clear.bind(this);
  }

  setNum1(e) {
    let num1 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({ num1 });
  }

  setNum2(e) {
    let num2 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({ num2 });
  }

  plus(e) {
    e.preventDefault();
    let result = this.state.num1 + this.state.num2;
    this.setState({result});
  }

  minus(e) {
    e.preventDefault();
    let result = this.state.num1 - this.state.num2;
    this.setState({result});
  }

  time(e) {
    e.preventDefault();
    let result = this.state.num1 * this.state.num2;
    this.setState({result});
  }

  divide(e) {
    e.preventDefault();
    let result = this.state.num1 / this.state.num2;
    this.setState({result});
  }

  clear(e) {
    this.setState({result: 0, num1: '', num2: ''});
  }

  render() {
    return (
      <div>
        <h1>{this.state.result}</h1>
        <input onChange={this.setNum1} value={this.state.num1}/>
        <input onChange={this.setNum2} value={this.state.num2}/>
        <br/>
        <button onClick={this.clear}>Reset</button>
        <br/>
        <button onClick={this.plus}>+</button>
        <button onClick={this.minus}>-</button>
        <button onClick={this.time}>*</button>
        <button onClick={this.divide}>/</button>
      </div>
    );
  }
}

export default Calculator;
