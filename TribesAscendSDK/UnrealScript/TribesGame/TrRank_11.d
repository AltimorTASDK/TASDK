module UnrealScript.TribesGame.TrRank_11;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_11 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_11")); }
	private static __gshared TrRank_11 mDefaultProperties;
	@property final static TrRank_11 DefaultProperties() { mixin(MGDPC("TrRank_11", "TrRank_11 TribesGame.Default__TrRank_11")); }
}
