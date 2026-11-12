class com.rockstargames.gtav.levelDesign.droneCam.Reticle
{
   var cornersAreFlashing;
   var view;
   static var STATE_NORMAL = 0;
   static var STATE_FIRE = 1;
   static var STATE_CHARGING = 2;
   static var STATE_25MM_CANNON = 3;
   static var STATE_40MM_CANNON = 4;
   static var STATE_105MM_CANNON = 5;
   static var MIN_FILL_SCALE = 33;
   static var FILL_SCALE_RANGE = 0.67;
   static var DEFAULT_COLOR = new flash.geom.ColorTransform();
   function Reticle(view, visible)
   {
      this.view = view;
      this.visible = visible;
      this.fillPercent = 0;
      this.state = STATE_NORMAL;
   }
   function set visible(isVisible)
   {
      this.view._visible = isVisible;
   }
   function set fillPercent(percent)
   {
      if(percent <= 0)
      {
         this.cornersAreFlashing = false;
         this.view.greenCorners.gotoAndStop("solid");
         this.view.greenCorners._visible = false;
         this.view.greenFill._visible = false;
         this.view.greenDot._visible = false;
      }
      else if(percent < 100)
      {
         if(!this.cornersAreFlashing)
         {
            this.view.greenCorners.gotoAndPlay("flashing");
            this.cornersAreFlashing = true;
         }
         this.view.greenCorners._visible = true;
         this.view.greenFill._visible = true;
         this.view.greenFill._xscale = this.view.greenFill._yscale = percent * FILL_SCALE_RANGE + MIN_FILL_SCALE;
         this.view.greenDot._visible = true;
      }
      else
      {
         this.cornersAreFlashing = false;
         this.view.greenCorners.gotoAndStop("solid");
         this.view.greenCorners._visible = true;
         this.view.greenFill._visible = true;
         this.view.greenFill._xscale = this.view.greenFill._yscale = 100;
         this.view.greenDot._visible = true;
      }
   }
   function set isOnTarget(onTarget)
   {
      if(onTarget)
      {
         com.rockstargames.ui.utils.Colour.ApplyHudColour(this.view.cross,com.rockstargames.ui.utils.HudColour.HUD_COLOUR_RED);
         com.rockstargames.ui.utils.Colour.ApplyHudColour(this.view.circle,com.rockstargames.ui.utils.HudColour.HUD_COLOUR_RED);
      }
      else
      {
         this.view.cross.transform.colorTransform = DEFAULT_COLOR;
         this.view.circle.transform.colorTransform = DEFAULT_COLOR;
      }
   }
   function set colour(hudColour)
   {
      com.rockstargames.ui.utils.Colour.ApplyHudColour(this.view.cross,hudColour);
      com.rockstargames.ui.utils.Colour.ApplyHudColour(this.view.circle,hudColour);
   }
   function set outerLinesVisible(visible)
   {
      this.view.outerLines._visible = visible;
   }
   function set state(currState)
   {
      switch(currState)
      {
         case STATE_FIRE:
            this.setStateFire();
            break;
         case STATE_CHARGING:
            this.setStateCharging();
            break;
         case STATE_25MM_CANNON:
            this.setState25mmCannon();
            break;
         case STATE_40MM_CANNON:
            this.setState40mmCannon();
            break;
         case STATE_105MM_CANNON:
            this.setState105mmCannon();
            break;
         default:
            this.setStateNormal();
      }
   }
   function setStateNormal()
   {
      this.view.circle.gotoAndStop("normal");
      this.view.cross.gotoAndStop("hidden");
   }
   function setStateFire()
   {
      this.view.circle.gotoAndStop("normal");
      this.view.cross.gotoAndPlay("showing");
      this.view.leftCurve.gotoAndPlay("hit");
      this.view.rightCurve.gotoAndPlay("hit");
   }
   function setStateCharging()
   {
      if(this.view.circle._currentframe == 1)
      {
         this.view.circle.gotoAndPlay("flashing");
      }
   }
   function setState25mmCannon()
   {
      this.view.greenDot._visible = false;
      this.view.greenFill._visible = false;
      this.view.greenCorners._visible = false;
      this.view.circle._visible = false;
      this.view.cross.gotoAndStop("showing");
      this.view.leftCurve._visible = false;
      this.view.rightCurve._visible = false;
      this.view.outerLines._visible = false;
   }
   function setState40mmCannon()
   {
      this.view.greenDot._visible = false;
      this.view.greenFill._visible = false;
      this.view.greenCorners._visible = false;
      this.view.circle._visible = true;
      this.view.circle.gotoAndStop("normal");
      this.view.cross.gotoAndStop("hidden");
      this.view.leftCurve._visible = false;
      this.view.rightCurve._visible = false;
      this.view.outerLines._visible = false;
   }
   function setState105mmCannon()
   {
      this.view.greenDot._visible = false;
      this.view.greenFill._visible = false;
      this.view.greenCorners._visible = false;
      this.view.circle._visible = true;
      this.view.cross.gotoAndStop("hidden");
      this.view.leftCurve._visible = false;
      this.view.rightCurve._visible = false;
      this.view.outerLines._visible = true;
   }
}
