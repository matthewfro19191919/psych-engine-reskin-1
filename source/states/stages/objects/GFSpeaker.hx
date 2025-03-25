package states.stages.objects;

class GFSpeaker extends FlxSpriteGroup
{
	public var speaker:FlxAnimate;

	public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);

		var antialias = ClientPrefs.data.antialiasing;

		speaker = new FlxAnimate();
		Paths.loadAnimateAtlas(speaker, 'characters/speakers');
		speaker.anim.addBySymbol('anim', 'speakers', 24, false);
		speaker.anim.play('anim', true);
		speaker.anim.curFrame = speaker.anim.length - 1;
		speaker.antialiasing = antialias;
		add(speaker);
	}

	public function beatHit()
	{
		speaker.anim.play('anim', true);
	}
}
