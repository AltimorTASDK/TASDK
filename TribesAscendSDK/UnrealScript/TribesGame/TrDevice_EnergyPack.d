module UnrealScript.TribesGame.TrDevice_EnergyPack;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_EnergyPack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_EnergyPack")); }
	private static __gshared TrDevice_EnergyPack mDefaultProperties;
	@property final static TrDevice_EnergyPack DefaultProperties() { mixin(MGDPC("TrDevice_EnergyPack", "TrDevice_EnergyPack TribesGame.Default__TrDevice_EnergyPack")); }
}
