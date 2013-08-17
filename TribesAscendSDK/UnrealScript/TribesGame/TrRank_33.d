module UnrealScript.TribesGame.TrRank_33;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_33 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_33")); }
	private static __gshared TrRank_33 mDefaultProperties;
	@property final static TrRank_33 DefaultProperties() { mixin(MGDPC("TrRank_33", "TrRank_33 TribesGame.Default__TrRank_33")); }
}
