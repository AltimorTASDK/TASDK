module UnrealScript.UTGame.UTSkelControl_MantaFlaps;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKSkelControl_VehicleFlap;

extern(C++) interface UTSkelControl_MantaFlaps : UDKSkelControl_VehicleFlap
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSkelControl_MantaFlaps")); }
	private static __gshared UTSkelControl_MantaFlaps mDefaultProperties;
	@property final static UTSkelControl_MantaFlaps DefaultProperties() { mixin(MGDPC("UTSkelControl_MantaFlaps", "UTSkelControl_MantaFlaps UTGame.Default__UTSkelControl_MantaFlaps")); }
}
