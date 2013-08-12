module UnrealScript.TribesGame.TrAttachment_S22Rifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_S22Rifle : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_S22Rifle")); }
	private static __gshared TrAttachment_S22Rifle mDefaultProperties;
	@property final static TrAttachment_S22Rifle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_S22Rifle)("TrAttachment_S22Rifle TribesGame.Default__TrAttachment_S22Rifle")); }
}
