module UnrealScript.TribesGame.TrExplosionLight_Spinfusor;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface TrExplosionLight_Spinfusor : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrExplosionLight_Spinfusor")); }
	private static __gshared TrExplosionLight_Spinfusor mDefaultProperties;
	@property final static TrExplosionLight_Spinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrExplosionLight_Spinfusor)("TrExplosionLight_Spinfusor TribesGame.Default__TrExplosionLight_Spinfusor")); }
}
