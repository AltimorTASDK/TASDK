module UnrealScript.TribesGame.TrAttachment_MIRVLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_MIRVLauncher : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_MIRVLauncher")); }
	private static __gshared TrAttachment_MIRVLauncher mDefaultProperties;
	@property final static TrAttachment_MIRVLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_MIRVLauncher)("TrAttachment_MIRVLauncher TribesGame.Default__TrAttachment_MIRVLauncher")); }
}
