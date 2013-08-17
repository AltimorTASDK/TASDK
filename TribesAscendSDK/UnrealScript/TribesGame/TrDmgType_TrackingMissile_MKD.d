module UnrealScript.TribesGame.TrDmgType_TrackingMissile_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_TrackingMissile_MKD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_TrackingMissile_MKD")); }
	private static __gshared TrDmgType_TrackingMissile_MKD mDefaultProperties;
	@property final static TrDmgType_TrackingMissile_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_TrackingMissile_MKD", "TrDmgType_TrackingMissile_MKD TribesGame.Default__TrDmgType_TrackingMissile_MKD")); }
}
