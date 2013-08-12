module UnrealScript.TribesGame.TrAttachment_SpikeLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SpikeLauncher : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_SpikeLauncher")); }
	private static __gshared TrAttachment_SpikeLauncher mDefaultProperties;
	@property final static TrAttachment_SpikeLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_SpikeLauncher)("TrAttachment_SpikeLauncher TribesGame.Default__TrAttachment_SpikeLauncher")); }
}
