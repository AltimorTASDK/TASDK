module UnrealScript.UTGame.UTAnimBlendByFall;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByFall;

extern(C++) interface UTAnimBlendByFall : UDKAnimBlendByFall
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByFall")); }
	private static __gshared UTAnimBlendByFall mDefaultProperties;
	@property final static UTAnimBlendByFall DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimBlendByFall)("UTAnimBlendByFall UTGame.Default__UTAnimBlendByFall")); }
}
