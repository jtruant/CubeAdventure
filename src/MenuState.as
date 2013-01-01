package
{
	import org.flixel.*;
	import org.flixel.system.FlxAnim;

	public class MenuState extends FlxState
	{
		override public function create():void
		{
			FlxG.bgColor= FlxG.RED;
			var title:FlxText;
			title = new FlxText(0, 16, FlxG.width, "Cube Adventure");
			title.color = FlxG.BLACK;
			title.setFormat (null, 16, FlxG.BLACK, "center");
			add(title);
			
			var gameInstructions:FlxText;
			gameInstructions = 
				new FlxText(0, FlxG.height - 150, FlxG.width, "Explore the cavern in search of gold and treasure! Follow the lit doors to your goal.");
			gameInstructions.setFormat (null, 8, 0xFFFFFFFF, "center");
			add(gameInstructions);
			
			var keyboardInstructions:FlxText;
			keyboardInstructions = 
				new FlxText(0, FlxG.height - 80, FlxG.width, "Press the arrow keys to move and space to jump. Press down to duck and up to open doors.");
			
			keyboardInstructions.setFormat (null, 8, 0xFFFFFFFF, "center");
			add(keyboardInstructions);
			
			var instructions:FlxText;
			instructions = new FlxText(0, FlxG.height - 32, FlxG.width, "Press Space To Play");
			instructions.setFormat (null, 8, 0xFFFFFFFF, "center");
			add(instructions);
			
		} // end function create
		
		
		override public function update():void
		{
			super.update(); // calls update on everything you added to the game loop
			
			if (FlxG.keys.justPressed("SPACE"))
			{
				FlxG.switchState(new PlayState());
			}
			
		} // end function update
		
		
		public function MenuState()
		{
			super();
			
		}  // end function MenuState
		
	} // end class
}