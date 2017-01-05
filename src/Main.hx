package;

import scene.*;
import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.api.*;
import react.native.component.*;

class Main {
	
	public static var styles = StyleSheet.create({
		container: {
			flex: 1,
			justifyContent: 'center',
			alignItems: 'center',
			backgroundColor: '#F5FCFF',
		},
		text: {
			fontSize: 20,
			textAlign: 'center',
			margin: 10,
		},
	});
	
	public static function main() {
		AppRegistry.registerComponent('Haxe', function() return App);
	}
}

class App extends ReactComponent {
	static var styles = Main.styles;
	
	function new(props) {
		super(props);
		state = {
			scene: 0,
		}
	}
	
	override function render() {
		function goto(i) setState({scene: i});
		return switch state.scene {
			case 1: jsx('<Scene1 onPress={goto.bind(0)} />');
			case 2: jsx('<Scene2 onPress={goto.bind(0)} />');
			case 3: jsx('<Scene3 onPress={goto.bind(0)} />');
			default:
				jsx('
					<View style={styles.container}>
						<Text style={styles.text}>
							Welcome to Haxe + React Native!
						</Text>
						<Text style={styles.text} onPress={goto.bind(1)}>
							Goto Scene1
						</Text>
						<Text style={styles.text} onPress={goto.bind(2)}>
							Goto Scene2
						</Text>
						<Text style={styles.text} onPress={goto.bind(3)}>
							Goto Scene3
						</Text>
					</View>
				');
		}
	}
}