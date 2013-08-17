module UnrealScript.TribesGame.TrRank_15;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_15 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_15")); }
	private static __gshared TrRank_15 mDefaultProperties;
	@property final static TrRank_15 DefaultProperties() { mixin(MGDPC("TrRank_15", "TrRank_15 TribesGame.Default__TrRank_15")); }
}
