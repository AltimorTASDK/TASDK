module UnrealScript.Engine.DmgType_Crushed;

import ScriptClasses;
import UnrealScript.Engine.DamageType;

extern(C++) interface DmgType_Crushed : DamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DmgType_Crushed")); }
}
