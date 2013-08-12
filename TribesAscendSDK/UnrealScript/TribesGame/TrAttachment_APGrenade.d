module UnrealScript.TribesGame.TrAttachment_APGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_APGrenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_APGrenade")); }
}
