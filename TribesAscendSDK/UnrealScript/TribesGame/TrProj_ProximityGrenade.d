module UnrealScript.TribesGame.TrProj_ProximityGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_ProximityGrenade : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_ProximityGrenade")); }
	private static __gshared TrProj_ProximityGrenade mDefaultProperties;
	@property final static TrProj_ProximityGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_ProximityGrenade)("TrProj_ProximityGrenade TribesGame.Default__TrProj_ProximityGrenade")); }
}
