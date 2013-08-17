module UnrealScript.TribesGame.TrArmorMod_Pathfinder;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrArmorMod;

extern(C++) interface TrArmorMod_Pathfinder : TrArmorMod
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrArmorMod_Pathfinder")()); }
	private static __gshared TrArmorMod_Pathfinder mDefaultProperties;
	@property final static TrArmorMod_Pathfinder DefaultProperties() { mixin(MGDPC!(TrArmorMod_Pathfinder, "TrArmorMod_Pathfinder TribesGame.Default__TrArmorMod_Pathfinder")()); }
}
