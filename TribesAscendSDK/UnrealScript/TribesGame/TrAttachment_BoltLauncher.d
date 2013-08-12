module UnrealScript.TribesGame.TrAttachment_BoltLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_BoltLauncher : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_BoltLauncher")); }
	private static __gshared TrAttachment_BoltLauncher mDefaultProperties;
	@property final static TrAttachment_BoltLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_BoltLauncher)("TrAttachment_BoltLauncher TribesGame.Default__TrAttachment_BoltLauncher")); }
}
