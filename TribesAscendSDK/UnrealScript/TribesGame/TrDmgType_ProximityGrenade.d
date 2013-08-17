module UnrealScript.TribesGame.TrDmgType_ProximityGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_ProximityGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_ProximityGrenade")); }
	private static __gshared TrDmgType_ProximityGrenade mDefaultProperties;
	@property final static TrDmgType_ProximityGrenade DefaultProperties() { mixin(MGDPC("TrDmgType_ProximityGrenade", "TrDmgType_ProximityGrenade TribesGame.Default__TrDmgType_ProximityGrenade")); }
}
