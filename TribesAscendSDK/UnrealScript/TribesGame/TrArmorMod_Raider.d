module UnrealScript.TribesGame.TrArmorMod_Raider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrArmorMod;

extern(C++) interface TrArmorMod_Raider : TrArmorMod
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrArmorMod_Raider")()); }
	private static __gshared TrArmorMod_Raider mDefaultProperties;
	@property final static TrArmorMod_Raider DefaultProperties() { mixin(MGDPC!(TrArmorMod_Raider, "TrArmorMod_Raider TribesGame.Default__TrArmorMod_Raider")()); }
}
