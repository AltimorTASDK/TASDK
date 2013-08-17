module UnrealScript.TribesGame.TrDevice_MIRVGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_MIRVGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_MIRVGrenade")); }
	private static __gshared TrDevice_MIRVGrenade mDefaultProperties;
	@property final static TrDevice_MIRVGrenade DefaultProperties() { mixin(MGDPC("TrDevice_MIRVGrenade", "TrDevice_MIRVGrenade TribesGame.Default__TrDevice_MIRVGrenade")); }
}
