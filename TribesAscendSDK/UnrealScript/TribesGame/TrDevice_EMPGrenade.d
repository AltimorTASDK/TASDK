module UnrealScript.TribesGame.TrDevice_EMPGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_EMPGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_EMPGrenade")); }
	private static __gshared TrDevice_EMPGrenade mDefaultProperties;
	@property final static TrDevice_EMPGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_EMPGrenade)("TrDevice_EMPGrenade TribesGame.Default__TrDevice_EMPGrenade")); }
}
