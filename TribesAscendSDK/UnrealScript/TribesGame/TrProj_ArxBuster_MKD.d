module UnrealScript.TribesGame.TrProj_ArxBuster_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_ArxBuster;

extern(C++) interface TrProj_ArxBuster_MKD : TrProj_ArxBuster
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_ArxBuster_MKD")); }
}
