module UnrealScript.TribesGame.TrDevice_EMPGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_EMPGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_EMPGrenade")); }
	private static __gshared TrDevice_EMPGrenade mDefaultProperties;
	@property final static TrDevice_EMPGrenade DefaultProperties() { mixin(MGDPC("TrDevice_EMPGrenade", "TrDevice_EMPGrenade TribesGame.Default__TrDevice_EMPGrenade")); }
}
