module UnrealScript.TribesGame.TrDmgType_X1Rifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_X1Rifle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_X1Rifle")); }
}
