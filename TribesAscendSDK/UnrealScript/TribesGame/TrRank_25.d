module UnrealScript.TribesGame.TrRank_25;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_25 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_25")); }
	private static __gshared TrRank_25 mDefaultProperties;
	@property final static TrRank_25 DefaultProperties() { mixin(MGDPC("TrRank_25", "TrRank_25 TribesGame.Default__TrRank_25")); }
}
