module UnrealScript.TribesGame.TrDmgType_TrackingMissile;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_TrackingMissile : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_TrackingMissile")); }
	private static __gshared TrDmgType_TrackingMissile mDefaultProperties;
	@property final static TrDmgType_TrackingMissile DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_TrackingMissile)("TrDmgType_TrackingMissile TribesGame.Default__TrDmgType_TrackingMissile")); }
}
