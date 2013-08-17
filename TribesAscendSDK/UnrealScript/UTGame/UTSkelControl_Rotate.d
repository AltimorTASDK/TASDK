module UnrealScript.UTGame.UTSkelControl_Rotate;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKSkelControl_Rotate;

extern(C++) interface UTSkelControl_Rotate : UDKSkelControl_Rotate
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSkelControl_Rotate")); }
	private static __gshared UTSkelControl_Rotate mDefaultProperties;
	@property final static UTSkelControl_Rotate DefaultProperties() { mixin(MGDPC("UTSkelControl_Rotate", "UTSkelControl_Rotate UTGame.Default__UTSkelControl_Rotate")); }
}
