class com.rockstargames.gtav.constants.PauseMenuColoursLUT
{
   static var _instance;
   var PREFIX = "cl";
   var HASHTABLE = new Object();
   static var BLACK = [0,0,0,0,100];
   static var BLACK_ALPHA_30 = [1,0,0,0,30];
   static var BLACK_ALPHA_50 = [2,0,0,0,50];
   static var WHITE = [4,225,225,225,100];
   static var GREYED = [5,160,160,160,100];
   static var BLACK_ALPHA_DEFAULT = [14,0,0,0,50];
   function PauseMenuColoursLUT()
   {
      this.HASHTABLE = new Object();
      this.HASHTABLE[this.PREFIX + "0"] = BLACK;
      this.HASHTABLE[this.PREFIX + "1"] = BLACK_ALPHA_30;
      this.HASHTABLE[this.PREFIX + "2"] = BLACK_ALPHA_50;
      this.HASHTABLE[this.PREFIX + "4"] = WHITE;
      this.HASHTABLE[this.PREFIX + "5"] = GREYED;
      this.HASHTABLE[this.PREFIX + "14"] = BLACK_ALPHA_DEFAULT;
   }
   static function lookUp(i)
   {
      if(_instance == undefined)
      {
         _instance = new com.rockstargames.gtav.constants.PauseMenuColoursLUT();
      }
      return _instance.HASHTABLE[_instance.PREFIX + i];
   }
}
