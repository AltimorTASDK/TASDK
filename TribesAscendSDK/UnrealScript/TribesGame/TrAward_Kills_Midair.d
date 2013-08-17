module UnrealScript.TribesGame.TrAward_Kills_Midair;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Kills_Midair : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAward_Kills_Midair")); }
	private static __gshared TrAward_Kills_Midair mDefaultProperties;
	@property final static TrAward_Kills_Midair DefaultProperties() { mixin(MGDPC("TrAward_Kills_Midair", "TrAward_Kills_Midair TribesGame.Default__TrAward_Kills_Midair")); }
}
