class com.rockstargames.gtav.constants.SatNavIconsLUT
{
   static var _instance;
   static var BLANK = new Array(0,"BLANK");
   static var FORWARD = new Array(1,"FORWARD");
   static var BACK = new Array(2,"BACK");
   static var LEFT = new Array(3,"LEFT");
   static var RIGHT = new Array(4,"RIGHT");
   static var SLIPROAD_LEFT = new Array(5,"SLIPROAD_LEFT");
   static var SLIPROAD_RIGHT = new Array(6,"SLIPROAD_RIGHT");
   static var DIAGONAL_LEFT = new Array(7,"DIAGONAL_LEFT");
   static var DIAGONAL_RIGHT = new Array(8,"DIAGONAL_RIGHT");
   static var MERGE_LEFT = new Array(9,"MERGE_LEFT");
   static var MERGE_RIGHT = new Array(10,"MERGE_RIGHT");
   static var U_TURN = new Array(11,"U_TURN");
   var HASHTABLE = new Object();
   var PREFIX = "sn";
   function SatNavIconsLUT()
   {
      this.HASHTABLE = new Object();
      this.HASHTABLE[this.PREFIX + "0"] = BLANK;
      this.HASHTABLE[this.PREFIX + "1"] = FORWARD;
      this.HASHTABLE[this.PREFIX + "2"] = BACK;
      this.HASHTABLE[this.PREFIX + "3"] = LEFT;
      this.HASHTABLE[this.PREFIX + "4"] = RIGHT;
      this.HASHTABLE[this.PREFIX + "5"] = SLIPROAD_LEFT;
      this.HASHTABLE[this.PREFIX + "6"] = SLIPROAD_RIGHT;
      this.HASHTABLE[this.PREFIX + "7"] = DIAGONAL_LEFT;
      this.HASHTABLE[this.PREFIX + "8"] = DIAGONAL_RIGHT;
      this.HASHTABLE[this.PREFIX + "9"] = MERGE_LEFT;
      this.HASHTABLE[this.PREFIX + "10"] = MERGE_RIGHT;
      this.HASHTABLE[this.PREFIX + "11"] = U_TURN;
   }
   static function lookUp(i)
   {
      if(_instance == undefined)
      {
         _instance = new com.rockstargames.gtav.constants.SatNavIconsLUT();
      }
      return _instance.HASHTABLE[_instance.PREFIX + i];
   }
}
