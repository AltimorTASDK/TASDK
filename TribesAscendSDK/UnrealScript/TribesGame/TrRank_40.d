module UnrealScript.TribesGame.TrRank_40;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_40 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_40")); }
	private static __gshared TrRank_40 mDefaultProperties;
	@property final static TrRank_40 DefaultProperties() { mixin(MGDPC("TrRank_40", "TrRank_40 TribesGame.Default__TrRank_40")); }
}
