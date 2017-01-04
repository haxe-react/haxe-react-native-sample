package scene;

import react.ReactComponent;
import react.ReactMacro.jsx;
import react.native.api.*;
import react.native.component.*;

class Scene3 extends ReactComponent {
	static var styles = Main.styles;
	
	override function render() {
		return jsx('
			<View style={styles.container}>
				<Text style={styles.text}>
					This is Scene3
				</Text>
				<Text style={styles.text} onPress={props.onPress}>
					Back
				</Text>
			</View>
		');
	}
}