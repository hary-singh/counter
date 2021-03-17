import { Component } from 'react';
import Counter from './components/Counter';
class App extends Component {
  // constructor(props) {
  //   super(props);
  //   this.state = { countVal: 0 }
        // this.inc = this.inc.bind(this)
  // }
  // state = { countVal: 0 }
  // inc() {
  // }
  // dec() {
  // }
  // inc = () => {
  //   this.setState({ countVal: this.state.countVal + 1 })
  // }
  // dec = () => {
  //   this.setState({ countVal: this.state.countVal - 1 })
  // }
  render() {
    // const { countVal } = this.state
    return (
      <>
        <h1 className="title">Counter Example</h1>
        <Counter color="red" />
        <Counter color="pink" />
        <Counter color="purple" />
        <Counter color="green" />
        <Counter />
      </>
    )
  }
}
export default App;