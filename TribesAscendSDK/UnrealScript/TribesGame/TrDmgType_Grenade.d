module UnrealScript.TribesGame.TrDmgType_Grenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_Grenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Grenade")); }
}
