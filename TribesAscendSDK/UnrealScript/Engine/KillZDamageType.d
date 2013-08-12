module UnrealScript.Engine.KillZDamageType;

import ScriptClasses;
import UnrealScript.Engine.DamageType;

extern(C++) interface KillZDamageType : DamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.KillZDamageType")); }
	private static __gshared KillZDamageType mDefaultProperties;
	@property final static KillZDamageType DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(KillZDamageType)("KillZDamageType Engine.Default__KillZDamageType")); }
}
