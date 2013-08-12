module UnrealScript.TribesGame.TrDevice_ProximityGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_ProximityGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ProximityGrenade")); }
	private static __gshared TrDevice_ProximityGrenade mDefaultProperties;
	@property final static TrDevice_ProximityGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_ProximityGrenade)("TrDevice_ProximityGrenade TribesGame.Default__TrDevice_ProximityGrenade")); }
}
