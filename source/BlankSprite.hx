
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.FlxObject;

class BlankSprite extends FlxSprite {
	public function new(x:Float,y:Float,sizeX:Int,sizeY:Int){
		super(x,y);
		// 一時的に地面のスプライトに色をつける
		makeGraphic(sizeX,sizeY,FlxColor.RED);
		solid = true;
		immovable = true;
		allowCollisions = FlxObject.DOWN;
	}
}
