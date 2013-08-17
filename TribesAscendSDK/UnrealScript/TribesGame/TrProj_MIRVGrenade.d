module UnrealScript.TribesGame.TrProj_MIRVGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_MIRVLauncher;

extern(C++) interface TrProj_MIRVGrenade : TrProj_MIRVLauncher
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_MIRVGrenade")()); }
	private static __gshared TrProj_MIRVGrenade mDefaultProperties;
	@property final static TrProj_MIRVGrenade DefaultProperties() { mixin(MGDPC!(TrProj_MIRVGrenade, "TrProj_MIRVGrenade TribesGame.Default__TrProj_MIRVGrenade")()); }
}
