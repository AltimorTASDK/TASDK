module UnrealScript.TribesGame.TrRank_2;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_2 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_2")); }
	private static __gshared TrRank_2 mDefaultProperties;
	@property final static TrRank_2 DefaultProperties() { mixin(MGDPC("TrRank_2", "TrRank_2 TribesGame.Default__TrRank_2")); }
}
