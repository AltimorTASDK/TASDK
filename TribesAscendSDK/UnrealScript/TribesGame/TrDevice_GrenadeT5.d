module UnrealScript.TribesGame.TrDevice_GrenadeT5;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_GrenadeT5 : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_GrenadeT5")); }
	private static __gshared TrDevice_GrenadeT5 mDefaultProperties;
	@property final static TrDevice_GrenadeT5 DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_GrenadeT5)("TrDevice_GrenadeT5 TribesGame.Default__TrDevice_GrenadeT5")); }
}
