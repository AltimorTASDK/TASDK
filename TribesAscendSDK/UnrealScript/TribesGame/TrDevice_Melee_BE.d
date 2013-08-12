module UnrealScript.TribesGame.TrDevice_Melee_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Melee;

extern(C++) interface TrDevice_Melee_BE : TrDevice_Melee
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Melee_BE")); }
}
