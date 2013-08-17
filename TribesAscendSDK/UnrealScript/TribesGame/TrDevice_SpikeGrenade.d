module UnrealScript.TribesGame.TrDevice_SpikeGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_SpikeGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_SpikeGrenade")()); }
	private static __gshared TrDevice_SpikeGrenade mDefaultProperties;
	@property final static TrDevice_SpikeGrenade DefaultProperties() { mixin(MGDPC!(TrDevice_SpikeGrenade, "TrDevice_SpikeGrenade TribesGame.Default__TrDevice_SpikeGrenade")()); }
}
