module UnrealScript.TribesGame.TrAward_Distance_Headshot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Distance_Headshot : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAward_Distance_Headshot")); }
	private static __gshared TrAward_Distance_Headshot mDefaultProperties;
	@property final static TrAward_Distance_Headshot DefaultProperties() { mixin(MGDPC("TrAward_Distance_Headshot", "TrAward_Distance_Headshot TribesGame.Default__TrAward_Distance_Headshot")); }
}
