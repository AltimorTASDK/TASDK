module UnrealScript.TribesGame.TrDevice_AVMine;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_AVMine : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_AVMine")); }
	private static __gshared TrDevice_AVMine mDefaultProperties;
	@property final static TrDevice_AVMine DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_AVMine)("TrDevice_AVMine TribesGame.Default__TrDevice_AVMine")); }
}
