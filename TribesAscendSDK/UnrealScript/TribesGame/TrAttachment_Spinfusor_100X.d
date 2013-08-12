module UnrealScript.TribesGame.TrAttachment_Spinfusor_100X;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Spinfusor_100X : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Spinfusor_100X")); }
}
