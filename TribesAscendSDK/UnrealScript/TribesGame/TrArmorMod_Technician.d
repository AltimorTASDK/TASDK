module UnrealScript.TribesGame.TrArmorMod_Technician;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrArmorMod;

extern(C++) interface TrArmorMod_Technician : TrArmorMod
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrArmorMod_Technician")()); }
	private static __gshared TrArmorMod_Technician mDefaultProperties;
	@property final static TrArmorMod_Technician DefaultProperties() { mixin(MGDPC!(TrArmorMod_Technician, "TrArmorMod_Technician TribesGame.Default__TrArmorMod_Technician")()); }
}
