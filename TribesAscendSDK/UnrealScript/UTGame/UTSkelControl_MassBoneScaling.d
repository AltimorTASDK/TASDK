module UnrealScript.UTGame.UTSkelControl_MassBoneScaling;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKSkelControl_MassBoneScaling;

extern(C++) interface UTSkelControl_MassBoneScaling : UDKSkelControl_MassBoneScaling
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSkelControl_MassBoneScaling")); }
	private static __gshared UTSkelControl_MassBoneScaling mDefaultProperties;
	@property final static UTSkelControl_MassBoneScaling DefaultProperties() { mixin(MGDPC("UTSkelControl_MassBoneScaling", "UTSkelControl_MassBoneScaling UTGame.Default__UTSkelControl_MassBoneScaling")); }
}
