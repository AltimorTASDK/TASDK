module UnrealScript.TribesGame.TrRank_47;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_47 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_47")()); }
	private static __gshared TrRank_47 mDefaultProperties;
	@property final static TrRank_47 DefaultProperties() { mixin(MGDPC!(TrRank_47, "TrRank_47 TribesGame.Default__TrRank_47")()); }
}
