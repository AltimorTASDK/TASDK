module UnrealScript.TribesGame.TrDevice_ARC8;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_ARC8 : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ARC8")); }
}
