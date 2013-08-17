module UnrealScript.TribesGame.TrRank_21;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_21 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_21")()); }
	private static __gshared TrRank_21 mDefaultProperties;
	@property final static TrRank_21 DefaultProperties() { mixin(MGDPC!(TrRank_21, "TrRank_21 TribesGame.Default__TrRank_21")()); }
}
