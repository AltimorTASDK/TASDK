module UnrealScript.UTGame.UTSkelControl_HoverboardSuspension;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKSkelControl_HoverboardSuspension;

extern(C++) interface UTSkelControl_HoverboardSuspension : UDKSkelControl_HoverboardSuspension
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSkelControl_HoverboardSuspension")); }
	private static __gshared UTSkelControl_HoverboardSuspension mDefaultProperties;
	@property final static UTSkelControl_HoverboardSuspension DefaultProperties() { mixin(MGDPC("UTSkelControl_HoverboardSuspension", "UTSkelControl_HoverboardSuspension UTGame.Default__UTSkelControl_HoverboardSuspension")); }
}
