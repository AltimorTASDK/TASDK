module UnrealScript.TribesGame.TrRank_20;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_20 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_20")); }
	private static __gshared TrRank_20 mDefaultProperties;
	@property final static TrRank_20 DefaultProperties() { mixin(MGDPC("TrRank_20", "TrRank_20 TribesGame.Default__TrRank_20")); }
}
