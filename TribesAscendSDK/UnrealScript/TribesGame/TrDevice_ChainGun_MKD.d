module UnrealScript.TribesGame.TrDevice_ChainGun_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ChainGun;

extern(C++) interface TrDevice_ChainGun_MKD : TrDevice_ChainGun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ChainGun_MKD")); }
}
