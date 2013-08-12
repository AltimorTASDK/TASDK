module UnrealScript.TribesGame.TrDevice_WhiteOut;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_WhiteOut : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_WhiteOut")); }
	private static __gshared TrDevice_WhiteOut mDefaultProperties;
	@property final static TrDevice_WhiteOut DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_WhiteOut)("TrDevice_WhiteOut TribesGame.Default__TrDevice_WhiteOut")); }
}
