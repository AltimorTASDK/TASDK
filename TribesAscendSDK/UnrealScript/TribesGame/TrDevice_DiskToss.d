module UnrealScript.TribesGame.TrDevice_DiskToss;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_DiskToss : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_DiskToss")); }
	private static __gshared TrDevice_DiskToss mDefaultProperties;
	@property final static TrDevice_DiskToss DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_DiskToss)("TrDevice_DiskToss TribesGame.Default__TrDevice_DiskToss")); }
}
