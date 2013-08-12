module UnrealScript.UTGame.UTAnimBlendByHoverboardTilt;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByHoverboardTilt;

extern(C++) interface UTAnimBlendByHoverboardTilt : UDKAnimBlendByHoverboardTilt
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByHoverboardTilt")); }
	private static __gshared UTAnimBlendByHoverboardTilt mDefaultProperties;
	@property final static UTAnimBlendByHoverboardTilt DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimBlendByHoverboardTilt)("UTAnimBlendByHoverboardTilt UTGame.Default__UTAnimBlendByHoverboardTilt")); }
}
