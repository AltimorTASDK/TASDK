module UnrealScript.TribesGame.TrRank_1;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_1 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_1")()); }
	private static __gshared TrRank_1 mDefaultProperties;
	@property final static TrRank_1 DefaultProperties() { mixin(MGDPC!(TrRank_1, "TrRank_1 TribesGame.Default__TrRank_1")()); }
}
