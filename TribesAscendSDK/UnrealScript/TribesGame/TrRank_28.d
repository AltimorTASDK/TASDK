module UnrealScript.TribesGame.TrRank_28;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_28 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_28")()); }
	private static __gshared TrRank_28 mDefaultProperties;
	@property final static TrRank_28 DefaultProperties() { mixin(MGDPC!(TrRank_28, "TrRank_28 TribesGame.Default__TrRank_28")()); }
}
