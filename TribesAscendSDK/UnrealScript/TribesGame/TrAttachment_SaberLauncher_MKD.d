module UnrealScript.TribesGame.TrAttachment_SaberLauncher_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SaberLauncher_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_SaberLauncher_MKD")); }
	private static __gshared TrAttachment_SaberLauncher_MKD mDefaultProperties;
	@property final static TrAttachment_SaberLauncher_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_SaberLauncher_MKD)("TrAttachment_SaberLauncher_MKD TribesGame.Default__TrAttachment_SaberLauncher_MKD")); }
}
