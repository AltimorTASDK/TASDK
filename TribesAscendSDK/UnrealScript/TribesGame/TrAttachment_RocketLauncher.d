module UnrealScript.TribesGame.TrAttachment_RocketLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_RocketLauncher : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_RocketLauncher")); }
	private static __gshared TrAttachment_RocketLauncher mDefaultProperties;
	@property final static TrAttachment_RocketLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_RocketLauncher)("TrAttachment_RocketLauncher TribesGame.Default__TrAttachment_RocketLauncher")); }
}
