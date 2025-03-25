package states.stages.objects;

import graphics.FlxSpriteExt;
import states.PlayState;

class GFSpeakerTankmen extends FlxSpriteGroup
{
	var speaker:FlxAnimate;
        var body:FlxAnimate;
        var body:FlxAnimate;

public function new(x:Float = 0, y:Float = 0)
{	
	speaker = new FlxAnimate();
	Paths.loadAnimateAtlas(speaker, 'characters/speakers');
	speaker.anim.addBySymbol('anim', 'speakers', 24, false);
	speaker.anim.play('anim', true);
	speaker.anim.curFrame = speaker.anim.length - 1;
	speaker.antialiasing = antialias;
	add(speaker);
    
    for (i in 0...2) {
	body = new FlxAnimate(speaker.x, speaker.y - 85);
	Paths.loadAnimateAtlas(body, 'characters/speakers/tankmanBodyPart');
	body.anim.addBySymbol('anim', 'speakers', 24, false);
	body.anim.play('anim', true);
	body.anim.curFrame = speaker.anim.length - 1;
	body.antialiasing = antialias;
	add(body);

        var headStr = 'tankmanTop'+ (i + 1);
        var head:FlxAnimate = new FlxAnimate(speaker.x, speaker.y - 215);
	Paths.loadAnimateAtlas('characters/speakers/' + headStr);
        head.x += (i != 0 ? -120 : 445);
	head.anim.addBySymbol('anim', 'speakers', 24, false);
	head.anim.play('anim', true);
	head.anim.curFrame = speaker.anim.length - 1;
	head.antialiasing = antialias;
	add(head);
    }
}
public function beatHit()
{
	speaker.anim.play('anim', true);
	body.anim.play('anim', true);
	head.anim.play('anim', true);
}
}
