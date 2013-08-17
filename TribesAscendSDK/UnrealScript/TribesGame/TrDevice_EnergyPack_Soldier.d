module UnrealScript.TribesGame.TrDevice_EnergyPack_Soldier;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_EnergyPack;

extern(C++) interface TrDevice_EnergyPack_Soldier : TrDevice_EnergyPack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_EnergyPack_Soldier")()); }
	private static __gshared TrDevice_EnergyPack_Soldier mDefaultProperties;
	@property final static TrDevice_EnergyPack_Soldier DefaultProperties() { mixin(MGDPC!(TrDevice_EnergyPack_Soldier, "TrDevice_EnergyPack_Soldier TribesGame.Default__TrDevice_EnergyPack_Soldier")()); }
}
