module UnrealScript.TribesGame.TrDmgType_ThrowingKnives;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_ThrowingKnives : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ThrowingKnives")); }
}
