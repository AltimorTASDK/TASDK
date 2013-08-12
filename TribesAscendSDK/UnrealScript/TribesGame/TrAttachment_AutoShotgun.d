module UnrealScript.TribesGame.TrAttachment_AutoShotgun;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_AutoShotgun : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_AutoShotgun")); }
	private static __gshared TrAttachment_AutoShotgun mDefaultProperties;
	@property final static TrAttachment_AutoShotgun DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_AutoShotgun)("TrAttachment_AutoShotgun TribesGame.Default__TrAttachment_AutoShotgun")); }
}
