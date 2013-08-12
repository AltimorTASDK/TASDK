module UnrealScript.UTGame.UTAnimBlendByWeapType;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendByWeapType;

extern(C++) interface UTAnimBlendByWeapType : UDKAnimBlendByWeapType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByWeapType")); }
	private static __gshared UTAnimBlendByWeapType mDefaultProperties;
	@property final static UTAnimBlendByWeapType DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAnimBlendByWeapType)("UTAnimBlendByWeapType UTGame.Default__UTAnimBlendByWeapType")); }
}
