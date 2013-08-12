module UnrealScript.TribesGame.TrDevice_PlasmaCannon;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_PlasmaCannon : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_PlasmaCannon")); }
}
