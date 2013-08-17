module UnrealScript.TribesGame.TrRank_45;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_45 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_45")()); }
	private static __gshared TrRank_45 mDefaultProperties;
	@property final static TrRank_45 DefaultProperties() { mixin(MGDPC!(TrRank_45, "TrRank_45 TribesGame.Default__TrRank_45")()); }
}
