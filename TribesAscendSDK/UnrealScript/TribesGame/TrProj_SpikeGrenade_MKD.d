module UnrealScript.TribesGame.TrProj_SpikeGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_SpikeGrenade;

extern(C++) interface TrProj_SpikeGrenade_MKD : TrProj_SpikeGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_SpikeGrenade_MKD")); }
	private static __gshared TrProj_SpikeGrenade_MKD mDefaultProperties;
	@property final static TrProj_SpikeGrenade_MKD DefaultProperties() { mixin(MGDPC("TrProj_SpikeGrenade_MKD", "TrProj_SpikeGrenade_MKD TribesGame.Default__TrProj_SpikeGrenade_MKD")); }
}
