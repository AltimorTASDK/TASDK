module UnrealScript.TribesGame.TrDevice_AssaultRifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_AssaultRifle : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_AssaultRifle")); }
}
