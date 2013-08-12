module UnrealScript.UTGame.UTSkelControl_TurretConstrained;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_TurretConstrained;

extern(C++) interface UTSkelControl_TurretConstrained : UDKSkelControl_TurretConstrained
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_TurretConstrained")); }
	private static __gshared UTSkelControl_TurretConstrained mDefaultProperties;
	@property final static UTSkelControl_TurretConstrained DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSkelControl_TurretConstrained)("UTSkelControl_TurretConstrained UTGame.Default__UTSkelControl_TurretConstrained")); }
}
