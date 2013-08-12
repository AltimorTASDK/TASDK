module UnrealScript.TribesGame.TrExplosionLight_SpinfusorD;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrExplosionLight_SpinfusorD : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrExplosionLight_SpinfusorD")); }
}
