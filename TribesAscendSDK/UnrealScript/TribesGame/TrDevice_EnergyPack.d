module UnrealScript.TribesGame.TrDevice_EnergyPack;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_EnergyPack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_EnergyPack")); }
	private static __gshared TrDevice_EnergyPack mDefaultProperties;
	@property final static TrDevice_EnergyPack DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_EnergyPack)("TrDevice_EnergyPack TribesGame.Default__TrDevice_EnergyPack")); }
}
