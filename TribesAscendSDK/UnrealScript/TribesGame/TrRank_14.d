module UnrealScript.TribesGame.TrRank_14;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_14 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_14")); }
	private static __gshared TrRank_14 mDefaultProperties;
	@property final static TrRank_14 DefaultProperties() { mixin(MGDPC("TrRank_14", "TrRank_14 TribesGame.Default__TrRank_14")); }
}
