module UnrealScript.TribesGame.TrProj_ProximityGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_ProximityGrenade : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_ProximityGrenade")()); }
	private static __gshared TrProj_ProximityGrenade mDefaultProperties;
	@property final static TrProj_ProximityGrenade DefaultProperties() { mixin(MGDPC!(TrProj_ProximityGrenade, "TrProj_ProximityGrenade TribesGame.Default__TrProj_ProximityGrenade")()); }
}
