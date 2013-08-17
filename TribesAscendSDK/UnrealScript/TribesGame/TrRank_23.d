module UnrealScript.TribesGame.TrRank_23;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_23 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_23")); }
	private static __gshared TrRank_23 mDefaultProperties;
	@property final static TrRank_23 DefaultProperties() { mixin(MGDPC("TrRank_23", "TrRank_23 TribesGame.Default__TrRank_23")); }
}
