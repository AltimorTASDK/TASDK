module UnrealScript.TribesGame.TrRank_13;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_13 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_13")()); }
	private static __gshared TrRank_13 mDefaultProperties;
	@property final static TrRank_13 DefaultProperties() { mixin(MGDPC!(TrRank_13, "TrRank_13 TribesGame.Default__TrRank_13")()); }
}
