module UnrealScript.TribesGame.TrRank_50;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_50 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_50")); }
	private static __gshared TrRank_50 mDefaultProperties;
	@property final static TrRank_50 DefaultProperties() { mixin(MGDPC("TrRank_50", "TrRank_50 TribesGame.Default__TrRank_50")); }
}
