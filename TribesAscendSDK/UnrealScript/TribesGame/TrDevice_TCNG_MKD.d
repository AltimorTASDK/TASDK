module UnrealScript.TribesGame.TrDevice_TCNG_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_TCNG;

extern(C++) interface TrDevice_TCNG_MKD : TrDevice_TCNG
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_TCNG_MKD")); }
	private static __gshared TrDevice_TCNG_MKD mDefaultProperties;
	@property final static TrDevice_TCNG_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_TCNG_MKD)("TrDevice_TCNG_MKD TribesGame.Default__TrDevice_TCNG_MKD")); }
}
