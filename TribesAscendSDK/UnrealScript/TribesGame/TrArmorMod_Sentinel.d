module UnrealScript.TribesGame.TrArmorMod_Sentinel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrArmorMod;

extern(C++) interface TrArmorMod_Sentinel : TrArmorMod
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrArmorMod_Sentinel")); }
	private static __gshared TrArmorMod_Sentinel mDefaultProperties;
	@property final static TrArmorMod_Sentinel DefaultProperties() { mixin(MGDPC("TrArmorMod_Sentinel", "TrArmorMod_Sentinel TribesGame.Default__TrArmorMod_Sentinel")); }
}
