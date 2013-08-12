module UnrealScript.TribesGame.TrAttachment_SN7_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SN7_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_SN7_MKD")); }
}
