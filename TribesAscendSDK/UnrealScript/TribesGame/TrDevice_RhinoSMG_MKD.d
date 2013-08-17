module UnrealScript.TribesGame.TrDevice_RhinoSMG_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_RhinoSMG;

extern(C++) interface TrDevice_RhinoSMG_MKD : TrDevice_RhinoSMG
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_RhinoSMG_MKD")); }
	private static __gshared TrDevice_RhinoSMG_MKD mDefaultProperties;
	@property final static TrDevice_RhinoSMG_MKD DefaultProperties() { mixin(MGDPC("TrDevice_RhinoSMG_MKD", "TrDevice_RhinoSMG_MKD TribesGame.Default__TrDevice_RhinoSMG_MKD")); }
}
