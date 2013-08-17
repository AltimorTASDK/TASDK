module UnrealScript.TribesGame.TrArmorMod_Juggernaut;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrArmorMod;

extern(C++) interface TrArmorMod_Juggernaut : TrArmorMod
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrArmorMod_Juggernaut")); }
	private static __gshared TrArmorMod_Juggernaut mDefaultProperties;
	@property final static TrArmorMod_Juggernaut DefaultProperties() { mixin(MGDPC("TrArmorMod_Juggernaut", "TrArmorMod_Juggernaut TribesGame.Default__TrArmorMod_Juggernaut")); }
}
