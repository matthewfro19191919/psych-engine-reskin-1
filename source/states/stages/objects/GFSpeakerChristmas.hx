package states.stages.objects;

class GFSpeakerChristmas extends FlxSpriteGroup
{
	public var speaker:FlxAnimate;
	public var lights:FlxAnimate;

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
    
    lights = new FlxAnimate();
		Paths.loadAnimateAtlas(lights, 'characters/lightss');
		lights.anim.addBySymbol('anim', 'glow', 24, false);
		lights.anim.play('anim', true);
		lights.anim.curFrame = lights.anim.length - 1;
		lights.antialiasing = antialias;
		add(speaker);
	}

	public function beatHit()
	{
		speaker.anim.play('anim', true);
		lights.anim.play('anim', true);
	}
}
