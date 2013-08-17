module UnrealScript.TribesGame.TrAttachment_RhinoSMG_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_RhinoSMG_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_RhinoSMG_MKD")); }
	private static __gshared TrAttachment_RhinoSMG_MKD mDefaultProperties;
	@property final static TrAttachment_RhinoSMG_MKD DefaultProperties() { mixin(MGDPC("TrAttachment_RhinoSMG_MKD", "TrAttachment_RhinoSMG_MKD TribesGame.Default__TrAttachment_RhinoSMG_MKD")); }
}
