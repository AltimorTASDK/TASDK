module UnrealScript.TribesGame.TrAttachment_AccurizedShotgun;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_AccurizedShotgun : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_AccurizedShotgun")); }
	private static __gshared TrAttachment_AccurizedShotgun mDefaultProperties;
	@property final static TrAttachment_AccurizedShotgun DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_AccurizedShotgun)("TrAttachment_AccurizedShotgun TribesGame.Default__TrAttachment_AccurizedShotgun")); }
}
