module UnrealScript.TribesGame.TrProj_RhinoSMG_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_RhinoSMG;

extern(C++) interface TrProj_RhinoSMG_MKD : TrProj_RhinoSMG
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_RhinoSMG_MKD")); }
}
