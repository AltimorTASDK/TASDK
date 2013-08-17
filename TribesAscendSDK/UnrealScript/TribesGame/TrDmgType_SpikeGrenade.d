module UnrealScript.TribesGame.TrDmgType_SpikeGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_SpikeGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_SpikeGrenade")()); }
	private static __gshared TrDmgType_SpikeGrenade mDefaultProperties;
	@property final static TrDmgType_SpikeGrenade DefaultProperties() { mixin(MGDPC!(TrDmgType_SpikeGrenade, "TrDmgType_SpikeGrenade TribesGame.Default__TrDmgType_SpikeGrenade")()); }
}
