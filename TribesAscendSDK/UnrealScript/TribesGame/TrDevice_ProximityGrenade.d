module UnrealScript.TribesGame.TrDevice_ProximityGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_ProximityGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_ProximityGrenade")()); }
	private static __gshared TrDevice_ProximityGrenade mDefaultProperties;
	@property final static TrDevice_ProximityGrenade DefaultProperties() { mixin(MGDPC!(TrDevice_ProximityGrenade, "TrDevice_ProximityGrenade TribesGame.Default__TrDevice_ProximityGrenade")()); }
}
