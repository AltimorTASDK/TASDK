module UnrealScript.TribesGame.TrRank_10;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_10 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_10")); }
	private static __gshared TrRank_10 mDefaultProperties;
	@property final static TrRank_10 DefaultProperties() { mixin(MGDPC("TrRank_10", "TrRank_10 TribesGame.Default__TrRank_10")); }
}
