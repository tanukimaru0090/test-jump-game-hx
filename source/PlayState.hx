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
		// 地面を表すスプライトの作成
		blankSprite = new BlankSprite(0,FlxG.height-16,FlxG.width,16); 
		// プレイヤーを表すスプライトの作成
		// 地面の衝突判定を行うために、地面スプライトを渡す
		sprite = new Sprite(blankSprite,350,150,50,50,FlxColor.RED); 
		// スプライトの追加
		add(blankSprite);
		add(sprite);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		FlxG.collide(sprite,blankSprite);
	}
}
