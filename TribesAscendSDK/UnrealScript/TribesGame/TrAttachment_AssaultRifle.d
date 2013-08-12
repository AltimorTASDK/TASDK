module UnrealScript.TribesGame.TrAttachment_AssaultRifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_AssaultRifle : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_AssaultRifle")); }
	private static __gshared TrAttachment_AssaultRifle mDefaultProperties;
	@property final static TrAttachment_AssaultRifle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_AssaultRifle)("TrAttachment_AssaultRifle TribesGame.Default__TrAttachment_AssaultRifle")); }
}
