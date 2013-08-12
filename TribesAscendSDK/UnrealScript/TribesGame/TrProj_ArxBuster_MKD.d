module UnrealScript.TribesGame.TrProj_ArxBuster_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_ArxBuster;

extern(C++) interface TrProj_ArxBuster_MKD : TrProj_ArxBuster
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_ArxBuster_MKD")); }
	private static __gshared TrProj_ArxBuster_MKD mDefaultProperties;
	@property final static TrProj_ArxBuster_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_ArxBuster_MKD)("TrProj_ArxBuster_MKD TribesGame.Default__TrProj_ArxBuster_MKD")); }
}
