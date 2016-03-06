package ;
import flixel.system.scaleModes.BaseScaleMode;
import flixel.FlxG;

/**
* MobileGameScaleMode
*
* A dead simple scale mode I pulled out of my game which helps
* adapt your screen to the various different aspect ratios
* on mobile devices.
*
* Works for everything from a 16:9 TV to a 1:1 Blackberry Passport
*
* ============== UI DESIGN NOTES ==============
* Background assets should be designed in a 1:1 aspect ratio to match
* all possible screen ratios. It will automatically scale and crop with
* no black bars. Only downside is that it can be innefficient if 99% of
* your users play on a non-1:1 ratio, then in 99% of cases you'll have 
* loaded image data that will likely never be seen.
*/
class MobileGameScaleMode extends BaseScaleMode{
	private var landscape:Bool;	//For landscape-oriented UIs
	public function new(landscape:Bool = false){
		super();
		this.landscape = landscape;
	}		
	override private function updateGameSize(Width:Int, Height:Int):Void {
		if (landscape) {
			gameSize.y = Width;
			gameSize.x = Width;
		}else {
			gameSize.y = Height;
			gameSize.x = Height;
		}
	}
}

























