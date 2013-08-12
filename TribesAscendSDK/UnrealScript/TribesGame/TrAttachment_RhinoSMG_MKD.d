module UnrealScript.TribesGame.TrAttachment_RhinoSMG_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_RhinoSMG_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_RhinoSMG_MKD")); }
	private static __gshared TrAttachment_RhinoSMG_MKD mDefaultProperties;
	@property final static TrAttachment_RhinoSMG_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_RhinoSMG_MKD)("TrAttachment_RhinoSMG_MKD TribesGame.Default__TrAttachment_RhinoSMG_MKD")); }
}
