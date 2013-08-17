module UnrealScript.TribesGame.TrRank_17;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_17 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_17")()); }
	private static __gshared TrRank_17 mDefaultProperties;
	@property final static TrRank_17 DefaultProperties() { mixin(MGDPC!(TrRank_17, "TrRank_17 TribesGame.Default__TrRank_17")()); }
}
