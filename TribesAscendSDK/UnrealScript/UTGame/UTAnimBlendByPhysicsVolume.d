module UnrealScript.UTGame.UTAnimBlendByPhysicsVolume;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByPhysicsVolume;

extern(C++) interface UTAnimBlendByPhysicsVolume : UDKAnimBlendByPhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByPhysicsVolume")); }
	private static __gshared UTAnimBlendByPhysicsVolume mDefaultProperties;
	@property final static UTAnimBlendByPhysicsVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimBlendByPhysicsVolume)("UTAnimBlendByPhysicsVolume UTGame.Default__UTAnimBlendByPhysicsVolume")); }
}
