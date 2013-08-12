module UnrealScript.UTGame.UTAnimBlendByPhysics;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByPhysics;

extern(C++) interface UTAnimBlendByPhysics : UDKAnimBlendByPhysics
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByPhysics")); }
	private static __gshared UTAnimBlendByPhysics mDefaultProperties;
	@property final static UTAnimBlendByPhysics DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimBlendByPhysics)("UTAnimBlendByPhysics UTGame.Default__UTAnimBlendByPhysics")); }
}
