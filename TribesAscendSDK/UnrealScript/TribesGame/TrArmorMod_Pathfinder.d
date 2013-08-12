module UnrealScript.TribesGame.TrArmorMod_Pathfinder;

import ScriptClasses;
import UnrealScript.TribesGame.TrArmorMod;

extern(C++) interface TrArmorMod_Pathfinder : TrArmorMod
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrArmorMod_Pathfinder")); }
	private static __gshared TrArmorMod_Pathfinder mDefaultProperties;
	@property final static TrArmorMod_Pathfinder DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrArmorMod_Pathfinder)("TrArmorMod_Pathfinder TribesGame.Default__TrArmorMod_Pathfinder")); }
}
