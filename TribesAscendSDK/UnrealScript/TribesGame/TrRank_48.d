module UnrealScript.TribesGame.TrRank_48;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_48 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRank_48")()); }
	private static __gshared TrRank_48 mDefaultProperties;
	@property final static TrRank_48 DefaultProperties() { mixin(MGDPC!(TrRank_48, "TrRank_48 TribesGame.Default__TrRank_48")()); }
}
