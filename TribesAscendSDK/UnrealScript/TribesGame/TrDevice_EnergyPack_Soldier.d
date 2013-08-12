module UnrealScript.TribesGame.TrDevice_EnergyPack_Soldier;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_EnergyPack;

extern(C++) interface TrDevice_EnergyPack_Soldier : TrDevice_EnergyPack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_EnergyPack_Soldier")); }
}
