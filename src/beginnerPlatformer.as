package
{
	import org.flixel.*;
	[SWF(width="640",height="480",backgroundColor="#000000")]
	//[Frame(factoryClass="Preloader")]
	
	public class beginnerPlatformer extends FlxGame
	{
		public function beginnerPlatformer()
		{
			super(320,240,MenuState,2);
			forceDebugger = true;
		}
	}
}