module UnrealScript.UTGame.UTAnimBlendByTurnInPlace;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByTurnInPlace;

extern(C++) interface UTAnimBlendByTurnInPlace : UDKAnimBlendByTurnInPlace
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByTurnInPlace")); }
	private static __gshared UTAnimBlendByTurnInPlace mDefaultProperties;
	@property final static UTAnimBlendByTurnInPlace DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimBlendByTurnInPlace)("UTAnimBlendByTurnInPlace UTGame.Default__UTAnimBlendByTurnInPlace")); }
}
