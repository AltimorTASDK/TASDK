module UnrealScript.TribesGame.TrDevice_SniperRifle_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_SniperRifle;

extern(C++) interface TrDevice_SniperRifle_MKD : TrDevice_SniperRifle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_SniperRifle_MKD")); }
}
