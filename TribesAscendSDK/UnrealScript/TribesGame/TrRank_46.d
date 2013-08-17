module UnrealScript.TribesGame.TrRank_46;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_46 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_46")()); }
	private static __gshared TrRank_46 mDefaultProperties;
	@property final static TrRank_46 DefaultProperties() { mixin(MGDPC!(TrRank_46, "TrRank_46 TribesGame.Default__TrRank_46")()); }
}
