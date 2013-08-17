module UnrealScript.TribesGame.TrDevice_StickyGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_StickyGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_StickyGrenade")); }
	private static __gshared TrDevice_StickyGrenade mDefaultProperties;
	@property final static TrDevice_StickyGrenade DefaultProperties() { mixin(MGDPC("TrDevice_StickyGrenade", "TrDevice_StickyGrenade TribesGame.Default__TrDevice_StickyGrenade")); }
}
