module UnrealScript.TribesGame.TrExplosionLight_StealthSpinfusor;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrExplosionLight_StealthSpinfusor : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrExplosionLight_StealthSpinfusor")); }
	private static __gshared TrExplosionLight_StealthSpinfusor mDefaultProperties;
	@property final static TrExplosionLight_StealthSpinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrExplosionLight_StealthSpinfusor)("TrExplosionLight_StealthSpinfusor TribesGame.Default__TrExplosionLight_StealthSpinfusor")); }
}
