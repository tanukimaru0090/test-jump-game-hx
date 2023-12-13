package;

import flixel.util.FlxColor;
import flixel.FlxState;
import flixel.FlxG;
class PlayState extends FlxState
{
	private var sprite:Sprite;
	private var blankSprite:BlankSprite;
	override public function create()
	{
		super.create();
		// プレイヤーを表すスプライトの作成
		sprite = new Sprite(350,150,50,50,FlxColor.RED);
		blankSprite = new BlankSprite(0,FlxG.height-16,FlxG.width,16); 
		// スプライトの追加
		add(blankSprite);
		add(sprite);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

	}
}
