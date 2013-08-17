module UnrealScript.TribesGame.TrRank_16;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_16 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_16")()); }
	private static __gshared TrRank_16 mDefaultProperties;
	@property final static TrRank_16 DefaultProperties() { mixin(MGDPC!(TrRank_16, "TrRank_16 TribesGame.Default__TrRank_16")()); }
}
