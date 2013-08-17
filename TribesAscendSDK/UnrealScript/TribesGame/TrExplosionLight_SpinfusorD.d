module UnrealScript.TribesGame.TrExplosionLight_SpinfusorD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrExplosionLight_SpinfusorD : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrExplosionLight_SpinfusorD")()); }
	private static __gshared TrExplosionLight_SpinfusorD mDefaultProperties;
	@property final static TrExplosionLight_SpinfusorD DefaultProperties() { mixin(MGDPC!(TrExplosionLight_SpinfusorD, "TrExplosionLight_SpinfusorD TribesGame.Default__TrExplosionLight_SpinfusorD")()); }
}
