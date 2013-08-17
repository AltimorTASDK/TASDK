module UnrealScript.TribesGame.TrDevice_EnergyPack_Juggernaut;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_EnergyPack;

extern(C++) interface TrDevice_EnergyPack_Juggernaut : TrDevice_EnergyPack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_EnergyPack_Juggernaut")); }
	private static __gshared TrDevice_EnergyPack_Juggernaut mDefaultProperties;
	@property final static TrDevice_EnergyPack_Juggernaut DefaultProperties() { mixin(MGDPC("TrDevice_EnergyPack_Juggernaut", "TrDevice_EnergyPack_Juggernaut TribesGame.Default__TrDevice_EnergyPack_Juggernaut")); }
}
