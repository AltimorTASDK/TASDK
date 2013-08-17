module UnrealScript.TribesGame.TrDevice_HighSpeedStealth;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Stealth;

extern(C++) interface TrDevice_HighSpeedStealth : TrDevice_Stealth
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_HighSpeedStealth")); }
	private static __gshared TrDevice_HighSpeedStealth mDefaultProperties;
	@property final static TrDevice_HighSpeedStealth DefaultProperties() { mixin(MGDPC("TrDevice_HighSpeedStealth", "TrDevice_HighSpeedStealth TribesGame.Default__TrDevice_HighSpeedStealth")); }
}
