module UnrealScript.TribesGame.TrProj_RhinoSMG_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_RhinoSMG;

extern(C++) interface TrProj_RhinoSMG_MKD : TrProj_RhinoSMG
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_RhinoSMG_MKD")); }
	private static __gshared TrProj_RhinoSMG_MKD mDefaultProperties;
	@property final static TrProj_RhinoSMG_MKD DefaultProperties() { mixin(MGDPC("TrProj_RhinoSMG_MKD", "TrProj_RhinoSMG_MKD TribesGame.Default__TrProj_RhinoSMG_MKD")); }
}
