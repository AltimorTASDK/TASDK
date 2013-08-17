module UnrealScript.TribesGame.TrRank_30;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_30 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_30")); }
	private static __gshared TrRank_30 mDefaultProperties;
	@property final static TrRank_30 DefaultProperties() { mixin(MGDPC("TrRank_30", "TrRank_30 TribesGame.Default__TrRank_30")); }
}
