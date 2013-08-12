module UnrealScript.TribesGame.TrAttachment_GrenadeXL_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_GrenadeXL_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_GrenadeXL_MKD")); }
}
