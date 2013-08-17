module UnrealScript.TribesGame.TrRank_9;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_9 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_9")); }
	private static __gshared TrRank_9 mDefaultProperties;
	@property final static TrRank_9 DefaultProperties() { mixin(MGDPC("TrRank_9", "TrRank_9 TribesGame.Default__TrRank_9")); }
}
