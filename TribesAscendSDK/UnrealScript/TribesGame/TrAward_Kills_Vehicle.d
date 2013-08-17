module UnrealScript.TribesGame.TrAward_Kills_Vehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Kills_Vehicle : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAward_Kills_Vehicle")); }
	private static __gshared TrAward_Kills_Vehicle mDefaultProperties;
	@property final static TrAward_Kills_Vehicle DefaultProperties() { mixin(MGDPC("TrAward_Kills_Vehicle", "TrAward_Kills_Vehicle TribesGame.Default__TrAward_Kills_Vehicle")); }
}
