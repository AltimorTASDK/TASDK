module UnrealScript.TribesGame.TrDevice_X1Rifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ChainGun;

extern(C++) interface TrDevice_X1Rifle : TrDevice_ChainGun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_X1Rifle")); }
}
