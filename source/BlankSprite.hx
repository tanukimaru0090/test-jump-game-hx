
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.FlxObject;

class BlankSprite extends FlxSprite {
	public function new(x:Float,y:Float,sizeX:Int,sizeY:Int){
		super(x,y);
		// 
		makeGraphic(sizeX,sizeY,FlxColor.TRANSPARENT);
		solid = true;
		immovable = true;
	}
}
