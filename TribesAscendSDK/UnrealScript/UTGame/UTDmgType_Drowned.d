module UnrealScript.UTGame.UTDmgType_Drowned;

import ScriptClasses;
import UnrealScript.UTGame.UTDamageType;

extern(C++) interface UTDmgType_Drowned : UTDamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDmgType_Drowned")); }
}
