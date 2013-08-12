module UnrealScript.TribesGame.TrProj_SN7_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_SN7;

extern(C++) interface TrProj_SN7_MKD : TrProj_SN7
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_SN7_MKD")); }
	private static __gshared TrProj_SN7_MKD mDefaultProperties;
	@property final static TrProj_SN7_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_SN7_MKD)("TrProj_SN7_MKD TribesGame.Default__TrProj_SN7_MKD")); }
}
