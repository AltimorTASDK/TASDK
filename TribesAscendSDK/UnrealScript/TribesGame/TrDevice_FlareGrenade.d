module UnrealScript.TribesGame.TrDevice_FlareGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_FlareGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_FlareGrenade")); }
	private static __gshared TrDevice_FlareGrenade mDefaultProperties;
	@property final static TrDevice_FlareGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_FlareGrenade)("TrDevice_FlareGrenade TribesGame.Default__TrDevice_FlareGrenade")); }
}
