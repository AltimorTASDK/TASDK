module UnrealScript.TribesGame.TrRank_27;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_27 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_27")); }
	private static __gshared TrRank_27 mDefaultProperties;
	@property final static TrRank_27 DefaultProperties() { mixin(MGDPC("TrRank_27", "TrRank_27 TribesGame.Default__TrRank_27")); }
}
