module UnrealScript.TribesGame.TrDevice_LightStickyGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_LightStickyGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_LightStickyGrenade")); }
	private static __gshared TrDevice_LightStickyGrenade mDefaultProperties;
	@property final static TrDevice_LightStickyGrenade DefaultProperties() { mixin(MGDPC("TrDevice_LightStickyGrenade", "TrDevice_LightStickyGrenade TribesGame.Default__TrDevice_LightStickyGrenade")); }
}
