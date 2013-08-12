module UnrealScript.TribesGame.TrAttachment_LightAssaultRifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LightAssaultRifle : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_LightAssaultRifle")); }
	private static __gshared TrAttachment_LightAssaultRifle mDefaultProperties;
	@property final static TrAttachment_LightAssaultRifle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_LightAssaultRifle)("TrAttachment_LightAssaultRifle TribesGame.Default__TrAttachment_LightAssaultRifle")); }
}
