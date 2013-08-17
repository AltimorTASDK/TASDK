module UnrealScript.TribesGame.TrDevice_HeavyAPGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_HeavyAPGrenade;

extern(C++) interface TrDevice_HeavyAPGrenade_MKD : TrDevice_HeavyAPGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_HeavyAPGrenade_MKD")()); }
	private static __gshared TrDevice_HeavyAPGrenade_MKD mDefaultProperties;
	@property final static TrDevice_HeavyAPGrenade_MKD DefaultProperties() { mixin(MGDPC!(TrDevice_HeavyAPGrenade_MKD, "TrDevice_HeavyAPGrenade_MKD TribesGame.Default__TrDevice_HeavyAPGrenade_MKD")()); }
}
