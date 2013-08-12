module UnrealScript.TribesGame.TrAttachment_HeavyBoltLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_HeavyBoltLauncher : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_HeavyBoltLauncher")); }
	private static __gshared TrAttachment_HeavyBoltLauncher mDefaultProperties;
	@property final static TrAttachment_HeavyBoltLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_HeavyBoltLauncher)("TrAttachment_HeavyBoltLauncher TribesGame.Default__TrAttachment_HeavyBoltLauncher")); }
}
