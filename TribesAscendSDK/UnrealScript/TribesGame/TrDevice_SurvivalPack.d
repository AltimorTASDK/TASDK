module UnrealScript.TribesGame.TrDevice_SurvivalPack;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_EnergyPack;

extern(C++) interface TrDevice_SurvivalPack : TrDevice_EnergyPack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_SurvivalPack")); }
	private static __gshared TrDevice_SurvivalPack mDefaultProperties;
	@property final static TrDevice_SurvivalPack DefaultProperties() { mixin(MGDPC("TrDevice_SurvivalPack", "TrDevice_SurvivalPack TribesGame.Default__TrDevice_SurvivalPack")); }
}
