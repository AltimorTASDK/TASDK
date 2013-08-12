module UnrealScript.TribesGame.TrDevice_ArxBuster_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_ArxBuster;

extern(C++) interface TrDevice_ArxBuster_MKD : TrDevice_ArxBuster
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ArxBuster_MKD")); }
}
