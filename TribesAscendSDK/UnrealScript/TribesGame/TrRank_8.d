module UnrealScript.TribesGame.TrRank_8;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_8 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_8")); }
	private static __gshared TrRank_8 mDefaultProperties;
	@property final static TrRank_8 DefaultProperties() { mixin(MGDPC("TrRank_8", "TrRank_8 TribesGame.Default__TrRank_8")); }
}
