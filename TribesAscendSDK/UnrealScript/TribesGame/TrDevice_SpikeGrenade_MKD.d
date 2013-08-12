module UnrealScript.TribesGame.TrDevice_SpikeGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_SpikeGrenade;

extern(C++) interface TrDevice_SpikeGrenade_MKD : TrDevice_SpikeGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_SpikeGrenade_MKD")); }
}
