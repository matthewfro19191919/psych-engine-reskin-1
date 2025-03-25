package states.stages.objects;

import graphics.FlxSpriteExt;
import states.PlayState;

class GFSpeakerTankmen extends FlxSpriteGroup
{
	var speaker:FlxSpriteExt;
        var parts:Array<FlxSpriteExt> = [];

public function new(x:Float = 0, y:Float = 0)
{
    PlayState.gf.x += 120;
    speaker = new FlxSpriteExt(PlayState.gf.x - 190, PlayState.gf.y + 305.5);
    speaker.loadImage('characters/speakers');
    speaker.addAnim('speakers', 'speakers');
    ScriptChar.group.insert(0, speaker);
    
    for (i in 0...2) {
        var body:FlxSpriteExt = new FlxSpriteExt(speaker.x, speaker.y - 85).loadImage('characters/speakers/tankmanBodyPart');
        body.addAnim('idle', 'tankmanBody');
        body.flipX = i == 0;
        body.x += (i == 0 ? -100 : 510);
        ScriptChar.group.insert(0, body);
        parts.push(body);

        var headStr = 'tankmanTop'+ (i + 1);
        var head:FlxSpriteExt = new FlxSpriteExt(speaker.x, speaker.y - 215).loadImage('characters/speakers/' + headStr);
        head.x += (i != 0 ? -120 : 445);
        head.addAnim('idle', headStr);
        head.flipX = i != 0;
        ScriptChar.group.add(head);
        parts.push(head);
    }
}
public function beatHit()
{
	speaker.anim.play('anim', true);
	body.anim.play('anim', true);
	head1.anim.play('anim', head);
}
}
