module UnrealScript.TribesGame.TrRank_43;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrRank;

extern(C++) interface TrRank_43 : TrRank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRank_43")); }
	private static __gshared TrRank_43 mDefaultProperties;
	@property final static TrRank_43 DefaultProperties() { mixin(MGDPC("TrRank_43", "TrRank_43 TribesGame.Default__TrRank_43")); }
}
