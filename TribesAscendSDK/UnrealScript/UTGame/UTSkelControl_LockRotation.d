module UnrealScript.UTGame.UTSkelControl_LockRotation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKSkelControl_LockRotation;

extern(C++) interface UTSkelControl_LockRotation : UDKSkelControl_LockRotation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSkelControl_LockRotation")()); }
	private static __gshared UTSkelControl_LockRotation mDefaultProperties;
	@property final static UTSkelControl_LockRotation DefaultProperties() { mixin(MGDPC!(UTSkelControl_LockRotation, "UTSkelControl_LockRotation UTGame.Default__UTSkelControl_LockRotation")()); }
}
