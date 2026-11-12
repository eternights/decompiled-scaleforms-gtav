class com.rockstargames.gtav.levelDesign.droneCam.HeadingMeter
{
   var view;
   static var UNITS_PER_CIRCLE = 360;
   static var HALF_CIRCLE = 0.5 * UNITS_PER_CIRCLE;
   static var SCALE_LENGTH = 1440;
   static var UNITS_TO_SCALE = (- SCALE_LENGTH) / UNITS_PER_CIRCLE;
   function HeadingMeter(view, visible)
   {
      this.view = view;
      this.visible = visible;
      this.heading = 0;
   }
   function set visible(isVisible)
   {
      this.view._visible = isVisible;
   }
   function set heading(value)
   {
      while(value < 0)
      {
         value += UNITS_PER_CIRCLE;
      }
      while(value > UNITS_PER_CIRCLE)
      {
         value -= UNITS_PER_CIRCLE;
      }
      this.view.scale0._x = value * UNITS_TO_SCALE;
      this.view.scale1._x = value >= HALF_CIRCLE ? this.view.scale0._x + SCALE_LENGTH : this.view.scale0._x - SCALE_LENGTH;
   }
}
