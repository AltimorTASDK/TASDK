module UnrealScript.TribesGame.TrRank_44;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_44 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_44")()); }
	private static __gshared TrRank_44 mDefaultProperties;
	@property final static TrRank_44 DefaultProperties() { mixin(MGDPC!(TrRank_44, "TrRank_44 TribesGame.Default__TrRank_44")()); }
}
