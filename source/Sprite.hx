import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.FlxObject;
class Sprite extends FlxSprite{
	var spriteJumpVelocity:Float = -200;
	var spriteGravity:Float = 400;

	private function jumpSprite():Void{
		velocity.y = spriteJumpVelocity;
	}

	override public function update(elapsed:Float):Void{
		super.update(elapsed);
		if(FlxG.keys.justPressed.SPACE){
			jumpSprite(); 
		}
		if(isTouching(FlxObject.DOWN)){
			trace("じめん！");
		}

	}
	public function new(x:Float,y:Float,sizeX:Int,sizeY:Int,color:FlxColor){
		super(x,y);
		makeGraphic(sizeX,sizeY,color);
		acceleration.y = spriteGravity;
	}
}
