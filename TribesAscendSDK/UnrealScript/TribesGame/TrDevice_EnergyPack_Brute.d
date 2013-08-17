module UnrealScript.TribesGame.TrDevice_EnergyPack_Brute;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_EnergyPack;

extern(C++) interface TrDevice_EnergyPack_Brute : TrDevice_EnergyPack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_EnergyPack_Brute")()); }
	private static __gshared TrDevice_EnergyPack_Brute mDefaultProperties;
	@property final static TrDevice_EnergyPack_Brute DefaultProperties() { mixin(MGDPC!(TrDevice_EnergyPack_Brute, "TrDevice_EnergyPack_Brute TribesGame.Default__TrDevice_EnergyPack_Brute")()); }
}
