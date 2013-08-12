module UnrealScript.TribesGame.TrDevice_MinorEnergyPack;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_MinorEnergyPack : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_MinorEnergyPack")); }
	private static __gshared TrDevice_MinorEnergyPack mDefaultProperties;
	@property final static TrDevice_MinorEnergyPack DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_MinorEnergyPack)("TrDevice_MinorEnergyPack TribesGame.Default__TrDevice_MinorEnergyPack")); }
}
