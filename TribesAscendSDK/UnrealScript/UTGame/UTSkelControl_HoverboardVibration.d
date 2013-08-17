module UnrealScript.UTGame.UTSkelControl_HoverboardVibration;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKSkelControl_HoverboardVibration;

extern(C++) interface UTSkelControl_HoverboardVibration : UDKSkelControl_HoverboardVibration
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSkelControl_HoverboardVibration")); }
	private static __gshared UTSkelControl_HoverboardVibration mDefaultProperties;
	@property final static UTSkelControl_HoverboardVibration DefaultProperties() { mixin(MGDPC("UTSkelControl_HoverboardVibration", "UTSkelControl_HoverboardVibration UTGame.Default__UTSkelControl_HoverboardVibration")); }
}
