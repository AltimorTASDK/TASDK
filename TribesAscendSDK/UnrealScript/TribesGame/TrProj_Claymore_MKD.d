module UnrealScript.TribesGame.TrProj_Claymore_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Claymore;

extern(C++) interface TrProj_Claymore_MKD : TrProj_Claymore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_Claymore_MKD")); }
	private static __gshared TrProj_Claymore_MKD mDefaultProperties;
	@property final static TrProj_Claymore_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_Claymore_MKD)("TrProj_Claymore_MKD TribesGame.Default__TrProj_Claymore_MKD")); }
}
