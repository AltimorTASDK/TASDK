module UnrealScript.TribesGame.TrRank_6;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_6 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_6")); }
	private static __gshared TrRank_6 mDefaultProperties;
	@property final static TrRank_6 DefaultProperties() { mixin(MGDPC("TrRank_6", "TrRank_6 TribesGame.Default__TrRank_6")); }
}
