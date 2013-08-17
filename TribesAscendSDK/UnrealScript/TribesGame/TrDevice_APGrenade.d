module UnrealScript.TribesGame.TrDevice_APGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_APGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_APGrenade")()); }
	private static __gshared TrDevice_APGrenade mDefaultProperties;
	@property final static TrDevice_APGrenade DefaultProperties() { mixin(MGDPC!(TrDevice_APGrenade, "TrDevice_APGrenade TribesGame.Default__TrDevice_APGrenade")()); }
}
