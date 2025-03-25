package states.stages.objects;

class GFSpeakerTankmen extends FlxSpriteGroup {
    var speaker:FlxAnimate;
    var body:FlxAnimate;
    var head1:FlxAnimate;
    var head2:FlxAnimate;

    public function new(x:Float = 0, y:Float = 0)
    {
	speaker = new FlxAnimate();
	Paths.loadAnimateAtlas(speaker, 'characters/speakers');
	speaker.anim.addBySymbol('anim', 'speakers', 24, false);
	speaker.anim.play('anim', true);
	speaker.anim.curFrame = speaker.anim.length - 1;
	add(speaker);
	
	body = new FlxAnimate(speaker.x, speaker.y - 85);
	Paths.loadAnimateAtlas(body, 'characters/speakers/tankmanBodyPart');
	body.anim.addBySymbol('anim', 'tankmanBodyPart', 24, false);
	body.anim.play('anim', true);
	body.anim.curFrame = speaker.anim.length - 1;
	add(body);

        head1 = new FlxAnimate(speaker.x, speaker.y - 215);
	Paths.loadAnimateAtlas(head1, 'characters/speakers/tankmanTop1');
	head1.anim.addBySymbol('anim', 'tankmanTop1', 24, false);
	head1.anim.play('anim', true);
	head1.anim.curFrame = speaker.anim.length - 1;
	add(head1);

	head2 = new FlxAnimate(speaker.x, speaker.y - 215);
	Paths.loadAnimateAtlas(head2, 'characters/speakers/tankmanTop2');
	head2.anim.addBySymbol('anim', 'tankmanTop2', 24, false);
	head2.anim.play('anim', true);
	head2.anim.curFrame = speaker.anim.length - 1;
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
