module UnrealScript.TribesGame.TrExplosionLight_StealthSpinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrExplosionLight_StealthSpinfusor : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrExplosionLight_StealthSpinfusor")()); }
	private static __gshared TrExplosionLight_StealthSpinfusor mDefaultProperties;
	@property final static TrExplosionLight_StealthSpinfusor DefaultProperties() { mixin(MGDPC!(TrExplosionLight_StealthSpinfusor, "TrExplosionLight_StealthSpinfusor TribesGame.Default__TrExplosionLight_StealthSpinfusor")()); }
}
