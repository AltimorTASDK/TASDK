module UnrealScript.TribesGame.TrRank_7;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_7 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_7")()); }
	private static __gshared TrRank_7 mDefaultProperties;
	@property final static TrRank_7 DefaultProperties() { mixin(MGDPC!(TrRank_7, "TrRank_7 TribesGame.Default__TrRank_7")()); }
}
