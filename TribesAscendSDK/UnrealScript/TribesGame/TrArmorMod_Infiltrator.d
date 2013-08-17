module UnrealScript.TribesGame.TrArmorMod_Infiltrator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrArmorMod;

extern(C++) interface TrArmorMod_Infiltrator : TrArmorMod
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrArmorMod_Infiltrator")()); }
	private static __gshared TrArmorMod_Infiltrator mDefaultProperties;
	@property final static TrArmorMod_Infiltrator DefaultProperties() { mixin(MGDPC!(TrArmorMod_Infiltrator, "TrArmorMod_Infiltrator TribesGame.Default__TrArmorMod_Infiltrator")()); }
}
