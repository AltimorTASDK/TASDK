module UnrealScript.TribesGame.TrRank_26;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_26 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_26")()); }
	private static __gshared TrRank_26 mDefaultProperties;
	@property final static TrRank_26 DefaultProperties() { mixin(MGDPC!(TrRank_26, "TrRank_26 TribesGame.Default__TrRank_26")()); }
}
