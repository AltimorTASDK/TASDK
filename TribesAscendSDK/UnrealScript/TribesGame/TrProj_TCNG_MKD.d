module UnrealScript.TribesGame.TrProj_TCNG_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_TCNG;

extern(C++) interface TrProj_TCNG_MKD : TrProj_TCNG
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_TCNG_MKD")); }
	private static __gshared TrProj_TCNG_MKD mDefaultProperties;
	@property final static TrProj_TCNG_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_TCNG_MKD)("TrProj_TCNG_MKD TribesGame.Default__TrProj_TCNG_MKD")); }
}
