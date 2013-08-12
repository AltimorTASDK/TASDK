module UnrealScript.UTGame.UTAnimBlendByHoverboardTurn;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByHoverboardTurn;

extern(C++) interface UTAnimBlendByHoverboardTurn : UDKAnimBlendByHoverboardTurn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByHoverboardTurn")); }
	private static __gshared UTAnimBlendByHoverboardTurn mDefaultProperties;
	@property final static UTAnimBlendByHoverboardTurn DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimBlendByHoverboardTurn)("UTAnimBlendByHoverboardTurn UTGame.Default__UTAnimBlendByHoverboardTurn")); }
}
