module UnrealScript.TribesGame.TrRank_4;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_4 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_4")()); }
	private static __gshared TrRank_4 mDefaultProperties;
	@property final static TrRank_4 DefaultProperties() { mixin(MGDPC!(TrRank_4, "TrRank_4 TribesGame.Default__TrRank_4")()); }
}
