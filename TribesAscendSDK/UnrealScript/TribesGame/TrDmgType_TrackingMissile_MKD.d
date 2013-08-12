module UnrealScript.TribesGame.TrDmgType_TrackingMissile_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_TrackingMissile_MKD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_TrackingMissile_MKD")); }
	private static __gshared TrDmgType_TrackingMissile_MKD mDefaultProperties;
	@property final static TrDmgType_TrackingMissile_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_TrackingMissile_MKD)("TrDmgType_TrackingMissile_MKD TribesGame.Default__TrDmgType_TrackingMissile_MKD")); }
}
