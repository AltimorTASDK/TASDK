module UnrealScript.TribesGame.TrAttachment_RhinoSMG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_RhinoSMG : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_RhinoSMG")()); }
	private static __gshared TrAttachment_RhinoSMG mDefaultProperties;
	@property final static TrAttachment_RhinoSMG DefaultProperties() { mixin(MGDPC!(TrAttachment_RhinoSMG, "TrAttachment_RhinoSMG TribesGame.Default__TrAttachment_RhinoSMG")()); }
}
