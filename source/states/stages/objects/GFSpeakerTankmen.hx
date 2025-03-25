package states.stages.objects;

class GFSpeakerTankmen extends FlxSpriteGroup
{
	public var speaker:FlxAnimate;
        public var body:FlxAnimate;
        public var head1:FlxAnimate;
        public var head2:FlxAnimate;

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
		
		body = new FlxAnimate(speaker.x, speaker.y - 85);
		Paths.loadAnimateAtlas(body, 'characters/speakers/tankmanBodyPart');
		body.anim.addBySymbol('anim', 'tankmanBodyPart', 24, false);
		body.anim.play('anim', true);
		body.anim.curFrame = speaker.anim.length - 1;	
		body.antialiasing = antialias;
		add(body);

                head1 = new FlxAnimate(speaker.x, speaker.y - 215);
		Paths.loadAnimateAtlas(head1, 'characters/speakers/tankmanTop1');
		head1.anim.addBySymbol('anim', 'tankmanTop1', 24, false);
		head1.anim.play('anim', true);
		head1.anim.curFrame = speaker.anim.length - 1;
		head1.antialiasing = antialias;
		add(head1);

		head2 = new FlxAnimate(speaker.x, speaker.y - 215);
		Paths.loadAnimateAtlas(head2, 'characters/speakers/tankmanTop2');
		head2.anim.addBySymbol('anim', 'tankmanTop2', 24, false);
		head2.anim.play('anim', true);
		head2.anim.curFrame = speaker.anim.length - 1;
		head2.antialiasing = antialias;
		add(head2);
	}

	public function beatHit()
	{
		speaker.anim.play('anim', true);
		body.anim.play('anim', true);
		head1.anim.play('anim', true);
		head2.anim.play('anim', true);
	}
}
