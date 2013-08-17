module UnrealScript.TribesGame.TrAward_Kills;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Kills : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAward_Kills")); }
	private static __gshared TrAward_Kills mDefaultProperties;
	@property final static TrAward_Kills DefaultProperties() { mixin(MGDPC("TrAward_Kills", "TrAward_Kills TribesGame.Default__TrAward_Kills")); }
}
