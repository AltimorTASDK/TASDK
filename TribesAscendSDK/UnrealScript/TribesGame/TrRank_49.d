module UnrealScript.TribesGame.TrRank_49;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_49 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_49")()); }
	private static __gshared TrRank_49 mDefaultProperties;
	@property final static TrRank_49 DefaultProperties() { mixin(MGDPC!(TrRank_49, "TrRank_49 TribesGame.Default__TrRank_49")()); }
}
