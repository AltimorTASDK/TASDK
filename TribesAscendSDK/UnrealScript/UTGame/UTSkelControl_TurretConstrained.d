module UnrealScript.UTGame.UTSkelControl_TurretConstrained;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKSkelControl_TurretConstrained;

extern(C++) interface UTSkelControl_TurretConstrained : UDKSkelControl_TurretConstrained
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSkelControl_TurretConstrained")); }
	private static __gshared UTSkelControl_TurretConstrained mDefaultProperties;
	@property final static UTSkelControl_TurretConstrained DefaultProperties() { mixin(MGDPC("UTSkelControl_TurretConstrained", "UTSkelControl_TurretConstrained UTGame.Default__UTSkelControl_TurretConstrained")); }
}
