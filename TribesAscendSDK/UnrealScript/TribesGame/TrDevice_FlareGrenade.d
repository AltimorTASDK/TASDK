module UnrealScript.TribesGame.TrDevice_FlareGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_FlareGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_FlareGrenade")); }
	private static __gshared TrDevice_FlareGrenade mDefaultProperties;
	@property final static TrDevice_FlareGrenade DefaultProperties() { mixin(MGDPC("TrDevice_FlareGrenade", "TrDevice_FlareGrenade TribesGame.Default__TrDevice_FlareGrenade")); }
}
