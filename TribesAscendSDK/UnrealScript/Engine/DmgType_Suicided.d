module UnrealScript.Engine.DmgType_Suicided;

import ScriptClasses;
import UnrealScript.Engine.KillZDamageType;

extern(C++) interface DmgType_Suicided : KillZDamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DmgType_Suicided")); }
}
