module UnrealScript.TribesGame.TrDevice_RhinoSMG_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_RhinoSMG;

extern(C++) interface TrDevice_RhinoSMG_MKD : TrDevice_RhinoSMG
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_RhinoSMG_MKD")); }
}
