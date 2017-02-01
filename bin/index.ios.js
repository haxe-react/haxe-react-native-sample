import {App} from './generated/ios/main';
import React, { Component } from 'react';
import { AppRegistry } from 'react-native';

export default class Main extends Component {
  render() {
    return (
      <App />
    );
  }
}

AppRegistry.registerComponent('Haxe', () => Main);