module UnrealScript.UTGame.UTSkelControl_CantileverBeam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKSkelControl_CantileverBeam;

extern(C++) interface UTSkelControl_CantileverBeam : UDKSkelControl_CantileverBeam
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSkelControl_CantileverBeam")); }
	private static __gshared UTSkelControl_CantileverBeam mDefaultProperties;
	@property final static UTSkelControl_CantileverBeam DefaultProperties() { mixin(MGDPC("UTSkelControl_CantileverBeam", "UTSkelControl_CantileverBeam UTGame.Default__UTSkelControl_CantileverBeam")); }
}
