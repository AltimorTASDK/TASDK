module UnrealScript.TribesGame.TrRank_38;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_38 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_38")); }
	private static __gshared TrRank_38 mDefaultProperties;
	@property final static TrRank_38 DefaultProperties() { mixin(MGDPC("TrRank_38", "TrRank_38 TribesGame.Default__TrRank_38")); }
}
