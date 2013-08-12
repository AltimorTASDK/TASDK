module UnrealScript.TribesGame.TrDmgType_ProximityGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_ProximityGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ProximityGrenade")); }
	private static __gshared TrDmgType_ProximityGrenade mDefaultProperties;
	@property final static TrDmgType_ProximityGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_ProximityGrenade)("TrDmgType_ProximityGrenade TribesGame.Default__TrDmgType_ProximityGrenade")); }
}
