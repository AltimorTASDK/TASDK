module UnrealScript.UTGame.UTEmit_VehicleHit;

import ScriptClasses;
import UnrealScript.UTGame.UTEmit_HitEffect;

extern(C++) interface UTEmit_VehicleHit : UTEmit_HitEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTEmit_VehicleHit")); }
	private static __gshared UTEmit_VehicleHit mDefaultProperties;
	@property final static UTEmit_VehicleHit DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTEmit_VehicleHit)("UTEmit_VehicleHit UTGame.Default__UTEmit_VehicleHit")); }
}
