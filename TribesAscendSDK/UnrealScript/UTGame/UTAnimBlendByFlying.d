module UnrealScript.UTGame.UTAnimBlendByFlying;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByFlying;

extern(C++) interface UTAnimBlendByFlying : UDKAnimBlendByFlying
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByFlying")); }
	private static __gshared UTAnimBlendByFlying mDefaultProperties;
	@property final static UTAnimBlendByFlying DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimBlendByFlying)("UTAnimBlendByFlying UTGame.Default__UTAnimBlendByFlying")); }
}
