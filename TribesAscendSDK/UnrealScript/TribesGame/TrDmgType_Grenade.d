module UnrealScript.TribesGame.TrDmgType_Grenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_Grenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Grenade")); }
	private static __gshared TrDmgType_Grenade mDefaultProperties;
	@property final static TrDmgType_Grenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Grenade)("TrDmgType_Grenade TribesGame.Default__TrDmgType_Grenade")); }
}
