module UnrealScript.TribesGame.TrAward_Speed_Skied;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Speed_Skied : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAward_Speed_Skied")); }
	private static __gshared TrAward_Speed_Skied mDefaultProperties;
	@property final static TrAward_Speed_Skied DefaultProperties() { mixin(MGDPC("TrAward_Speed_Skied", "TrAward_Speed_Skied TribesGame.Default__TrAward_Speed_Skied")); }
}
