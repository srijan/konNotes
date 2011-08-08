package
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.ui.Mouse;
	import flash.ui.MouseCursorData;

	public class Kursers
	{
		[Embed(source="assets/k_horizontal_resize.png")]
		private static const horizontalResizeCursor:Class;
		
		[Embed(source="assets/k_move.png")]
		private static const moveCursor:Class;
		
		[Embed(source="assets/k_precision_select.png")]
		private static const precisionSelectCursor:Class;

		[Embed(source="assets/k_text_select.png")]
		private static const textSelectCursor:Class;
		
		public static const HORIZONTAL_RESIZE:String = "horizontalResizeCursor";
		public static const MOVE:String = "moveCursor";
		public static const PRECISION_SELECT:String = "precisionSelectCursor";
		public static const TEXT_SELECT:String = "textSelectCursor";
		
		
		public function Kursers() { 
		}
		
		public static function registerAllKursers():void {
			var bitmapData:Vector.<BitmapData>;
			var bitmap:Bitmap;
			var cursorData:MouseCursorData ;
			
			bitmapData = new Vector.<BitmapData>(1,true);
			bitmap = new horizontalResizeCursor();
			bitmapData[0] = bitmap.bitmapData;
			cursorData = new MouseCursorData();
			cursorData.hotSpot = new Point(16,16);
			cursorData.data = bitmapData;
			Mouse.registerCursor(HORIZONTAL_RESIZE, cursorData);			
			
			bitmapData = new Vector.<BitmapData>(1,true);
			bitmap = new moveCursor();
			bitmapData[0] = bitmap.bitmapData;
			cursorData = new MouseCursorData();
			cursorData.hotSpot = new Point(16,16);
			cursorData.data = bitmapData;
			Mouse.registerCursor(MOVE, cursorData);
			
			bitmapData = new Vector.<BitmapData>(1,true);
			bitmap = new precisionSelectCursor();
			bitmapData[0] = bitmap.bitmapData;
			cursorData = new MouseCursorData();
			cursorData.hotSpot = new Point(16,16);
			cursorData.data = bitmapData;
			Mouse.registerCursor(PRECISION_SELECT, cursorData);
			
			bitmapData = new Vector.<BitmapData>(1,true);
			bitmap = new textSelectCursor();
			bitmapData[0] = bitmap.bitmapData;
			cursorData = new MouseCursorData();
			cursorData.hotSpot = new Point(16,16);
			cursorData.data = bitmapData;
			Mouse.registerCursor(TEXT_SELECT, cursorData);
		}
	}
}