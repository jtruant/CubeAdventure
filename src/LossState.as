package
{
	import org.flixel.*;
	
	public class LossState extends FlxState
	{
		public var playerScore:int = 0;
		
		override public function create():void
		{
			FlxG.bgColor= FlxG.BLACK;
			var title:FlxText;
			title = new FlxText(0, 16, FlxG.width, "Alas, the cavern has claimed another!");
			
			title.setFormat (null, 16, FlxG.WHITE, "center");
			add(title);
			
			var keyboardInstructions:FlxText;
			keyboardInstructions = 
				new FlxText(0, FlxG.height - 64, FlxG.width, "Your final score was "+playerScore);
			
			keyboardInstructions.setFormat (null, 8, 0xFFFFFFFF, "center");
			add(keyboardInstructions);
			
			var instructions:FlxText;
			instructions = new FlxText(0, FlxG.height - 32, FlxG.width, "Press the M key to return to the menu or the R key to restart the game.");
			instructions.setFormat (null, 8, 0xFFFFFFFF, "center");
			add(instructions);
			
		} // end function create
		
		
		override public function update():void
		{
			super.update(); // calls update on everything you added to the game loop
			
			if (FlxG.keys.justPressed("M"))
			{
				FlxG.switchState(new MenuState());
			}
			if (FlxG.keys.justPressed("R"))
			{
				FlxG.switchState(new PlayState());
			}
			
		} // end function update
		
		
		public function LossState(score:int)
		{
			playerScore = score;
			super();
			
		}  // end function MenuState
		
	} // end class
	
}