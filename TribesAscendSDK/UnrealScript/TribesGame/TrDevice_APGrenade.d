module UnrealScript.TribesGame.TrDevice_APGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_APGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_APGrenade")); }
	private static __gshared TrDevice_APGrenade mDefaultProperties;
	@property final static TrDevice_APGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_APGrenade)("TrDevice_APGrenade TribesGame.Default__TrDevice_APGrenade")); }
}
