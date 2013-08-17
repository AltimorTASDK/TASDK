module UnrealScript.TribesGame.TrArmorMod;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrArmorMod : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrArmorMod")); }
	private static __gshared TrArmorMod mDefaultProperties;
	@property final static TrArmorMod DefaultProperties() { mixin(MGDPC("TrArmorMod", "TrArmorMod TribesGame.Default__TrArmorMod")); }
}
