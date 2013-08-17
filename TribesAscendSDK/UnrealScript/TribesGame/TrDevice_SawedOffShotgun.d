module UnrealScript.TribesGame.TrDevice_SawedOffShotgun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Shotgun;

extern(C++) interface TrDevice_SawedOffShotgun : TrDevice_Shotgun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_SawedOffShotgun")); }
	private static __gshared TrDevice_SawedOffShotgun mDefaultProperties;
	@property final static TrDevice_SawedOffShotgun DefaultProperties() { mixin(MGDPC("TrDevice_SawedOffShotgun", "TrDevice_SawedOffShotgun TribesGame.Default__TrDevice_SawedOffShotgun")); }
}
