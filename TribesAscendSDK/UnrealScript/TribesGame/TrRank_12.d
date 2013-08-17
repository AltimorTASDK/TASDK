module UnrealScript.TribesGame.TrRank_12;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_12 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_12")()); }
	private static __gshared TrRank_12 mDefaultProperties;
	@property final static TrRank_12 DefaultProperties() { mixin(MGDPC!(TrRank_12, "TrRank_12 TribesGame.Default__TrRank_12")()); }
}
