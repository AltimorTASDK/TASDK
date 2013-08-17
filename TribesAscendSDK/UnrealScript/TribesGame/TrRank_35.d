module UnrealScript.TribesGame.TrRank_35;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_35 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_35")()); }
	private static __gshared TrRank_35 mDefaultProperties;
	@property final static TrRank_35 DefaultProperties() { mixin(MGDPC!(TrRank_35, "TrRank_35 TribesGame.Default__TrRank_35")()); }
}
