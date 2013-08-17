module UnrealScript.TribesGame.TrDevice_HeavyAPGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_HeavyAPGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_HeavyAPGrenade")()); }
	private static __gshared TrDevice_HeavyAPGrenade mDefaultProperties;
	@property final static TrDevice_HeavyAPGrenade DefaultProperties() { mixin(MGDPC!(TrDevice_HeavyAPGrenade, "TrDevice_HeavyAPGrenade TribesGame.Default__TrDevice_HeavyAPGrenade")()); }
}
