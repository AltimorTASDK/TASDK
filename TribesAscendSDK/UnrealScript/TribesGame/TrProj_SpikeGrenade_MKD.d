module UnrealScript.TribesGame.TrProj_SpikeGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_SpikeGrenade;

extern(C++) interface TrProj_SpikeGrenade_MKD : TrProj_SpikeGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_SpikeGrenade_MKD")); }
}
