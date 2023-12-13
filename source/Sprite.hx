import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.FlxObject;

class Sprite extends FlxSprite{
	var spriteJumpVelocity:Float = -200;
	var spriteGravity:Float = 400;
	var blankSprite:BlankSprite;
	private function jumpSprite():Void{
		velocity.y = spriteJumpVelocity;
	}

	override public function update(elapsed:Float):Void{
		super.update(elapsed);
		var isGrounded:Bool = FlxG.collide(this,blankSprite);
		if(isGrounded){
			velocity.y = 0;
		}
		if(FlxG.keys.justPressed.SPACE){
				jumpSprite(); 
		}


	}
	public function new(blankSprite:BlankSprite,x:Float,y:Float,sizeX:Int,sizeY:Int,color:FlxColor){
		super(x,y);
		makeGraphic(sizeX,sizeY,color);
		acceleration.y = spriteGravity;
		this.blankSprite = blankSprite;
	}
}
