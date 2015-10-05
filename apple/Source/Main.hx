package;


import motion.Actuate;
import motion.actuators.GenericActuator;
import openfl.display.DisplayObject;
import openfl.events.KeyboardEvent;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.Assets;
import openfl.events.KeyboardEvent;


class Main extends Sprite {
	
	private var apple:DisplayObject;
	private var apple_y:Float = 0;
	
	public function new () {
		
		super ();
		
		var scene = new Scene();
		addChild(scene);
		
		apple = scene.tree.apple;
		apple_y = apple.y;
		
		stage.addEventListener(KeyboardEvent.KEY_DOWN, onKey);
	}
	
	function onKey(k:KeyboardEvent)
	{
		if (k.keyCode == 40) //down
		{
			Actuate.tween(apple, 1.0, { y:apple_y + 100 } );
		}
	}
}