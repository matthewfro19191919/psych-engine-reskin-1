package states.stages.objects;

class GFSpeakerTankmen extends FlxSpriteGroup
{
	public var speaker:FlxAnimate;
	public var body:FlxAnimate;

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
    
    for (i in 0...2) {
    body = new FlxAnimate();
		Paths.loadAnimateAtlas(body, 'characters/speakers/tankmanBodyPart');
		body.anim.addBySymbol('anim', 'tankmanBody', 24, false);
		body.anim.play('anim', true);
		body.anim.curFrame = body.anim.length - 1;
		body.antialiasing = antialias;
		add(speaker);
      
    var headStr = 'tankmanTop'+ (i + 1);');
		Paths.loadAnimateAtlas(head, 'characters/speakers/' + headStr)
		head.anim.addBySymbol('anim', headStr, 24, false);
		head.anim.play('anim', true);
		head.anim.curFrame = head.anim.length - 1;
		head.antialiasing = antialias;
		add(speaker);
    }
	}

	public function beatHit()
	{
		speaker.anim.play('anim', true);
		body.anim.play('anim', true);
		head.anim.play('anim', true);
	}
}
