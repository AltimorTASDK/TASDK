module UnrealScript.TribesGame.TrProj_DiskToss;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Spinfusor;

extern(C++) interface TrProj_DiskToss : TrProj_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_DiskToss")()); }
	private static __gshared TrProj_DiskToss mDefaultProperties;
	@property final static TrProj_DiskToss DefaultProperties() { mixin(MGDPC!(TrProj_DiskToss, "TrProj_DiskToss TribesGame.Default__TrProj_DiskToss")()); }
}
