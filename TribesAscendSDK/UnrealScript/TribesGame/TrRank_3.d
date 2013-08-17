module UnrealScript.TribesGame.TrRank_3;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_3 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_3")()); }
	private static __gshared TrRank_3 mDefaultProperties;
	@property final static TrRank_3 DefaultProperties() { mixin(MGDPC!(TrRank_3, "TrRank_3 TribesGame.Default__TrRank_3")()); }
}
