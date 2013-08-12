module UnrealScript.TribesGame.TrDevice_STGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_STGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_STGrenade")); }
	private static __gshared TrDevice_STGrenade mDefaultProperties;
	@property final static TrDevice_STGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_STGrenade)("TrDevice_STGrenade TribesGame.Default__TrDevice_STGrenade")); }
}
