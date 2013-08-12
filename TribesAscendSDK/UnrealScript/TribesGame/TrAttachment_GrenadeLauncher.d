module UnrealScript.TribesGame.TrAttachment_GrenadeLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_GrenadeLauncher : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_GrenadeLauncher")); }
	private static __gshared TrAttachment_GrenadeLauncher mDefaultProperties;
	@property final static TrAttachment_GrenadeLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_GrenadeLauncher)("TrAttachment_GrenadeLauncher TribesGame.Default__TrAttachment_GrenadeLauncher")); }
}
