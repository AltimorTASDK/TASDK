module UnrealScript.TribesGame.TrDevice_HighSpeedStealth;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Stealth;

extern(C++) interface TrDevice_HighSpeedStealth : TrDevice_Stealth
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_HighSpeedStealth")); }
}
