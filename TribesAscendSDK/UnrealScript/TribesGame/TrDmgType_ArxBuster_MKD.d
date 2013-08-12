module UnrealScript.TribesGame.TrDmgType_ArxBuster_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_ArxBuster;

extern(C++) interface TrDmgType_ArxBuster_MKD : TrDmgType_ArxBuster
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ArxBuster_MKD")); }
}
