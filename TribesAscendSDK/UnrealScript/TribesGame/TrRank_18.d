module UnrealScript.TribesGame.TrRank_18;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_18 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_18")()); }
	private static __gshared TrRank_18 mDefaultProperties;
	@property final static TrRank_18 DefaultProperties() { mixin(MGDPC!(TrRank_18, "TrRank_18 TribesGame.Default__TrRank_18")()); }
}
