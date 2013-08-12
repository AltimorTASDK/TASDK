module UnrealScript.UTGame.UTAnimBlendByHoverboarding;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByHoverboarding;

extern(C++) interface UTAnimBlendByHoverboarding : UDKAnimBlendByHoverboarding
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByHoverboarding")); }
	private static __gshared UTAnimBlendByHoverboarding mDefaultProperties;
	@property final static UTAnimBlendByHoverboarding DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimBlendByHoverboarding)("UTAnimBlendByHoverboarding UTGame.Default__UTAnimBlendByHoverboarding")); }
}
