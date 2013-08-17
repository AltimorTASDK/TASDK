module UnrealScript.TribesGame.TrExplosionLight_Spinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrExplosionLight_Spinfusor : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrExplosionLight_Spinfusor")()); }
	private static __gshared TrExplosionLight_Spinfusor mDefaultProperties;
	@property final static TrExplosionLight_Spinfusor DefaultProperties() { mixin(MGDPC!(TrExplosionLight_Spinfusor, "TrExplosionLight_Spinfusor TribesGame.Default__TrExplosionLight_Spinfusor")()); }
}
