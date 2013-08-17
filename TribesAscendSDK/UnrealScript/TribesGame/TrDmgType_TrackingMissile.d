module UnrealScript.TribesGame.TrDmgType_TrackingMissile;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_TrackingMissile : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_TrackingMissile")()); }
	private static __gshared TrDmgType_TrackingMissile mDefaultProperties;
	@property final static TrDmgType_TrackingMissile DefaultProperties() { mixin(MGDPC!(TrDmgType_TrackingMissile, "TrDmgType_TrackingMissile TribesGame.Default__TrDmgType_TrackingMissile")()); }
}
