module UnrealScript.TribesGame.TrDmgType_Explosive;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Explosive : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Explosive")); }
}
