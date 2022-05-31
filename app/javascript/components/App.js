import React from "react"
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Greeting from "./Greeting";
import { Provider } from 'react-redux';
import store from './redux/store';

class App extends React.Component {
  render () {
    return (
      <Provider store={store}>
        <BrowserRouter>
          <Routes>
            <Route path="/" element={<Greeting/>} exact={true}/>
          </Routes>
        </BrowserRouter>
      </Provider>
    );
  }
}

export default App
