module UnrealScript.TribesGame.TrRank_19;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_19 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_19")); }
	private static __gshared TrRank_19 mDefaultProperties;
	@property final static TrRank_19 DefaultProperties() { mixin(MGDPC("TrRank_19", "TrRank_19 TribesGame.Default__TrRank_19")); }
}
