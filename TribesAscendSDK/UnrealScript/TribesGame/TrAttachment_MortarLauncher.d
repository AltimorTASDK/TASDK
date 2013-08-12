module UnrealScript.TribesGame.TrAttachment_MortarLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_MortarLauncher : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_MortarLauncher")); }
	private static __gshared TrAttachment_MortarLauncher mDefaultProperties;
	@property final static TrAttachment_MortarLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_MortarLauncher)("TrAttachment_MortarLauncher TribesGame.Default__TrAttachment_MortarLauncher")); }
}
