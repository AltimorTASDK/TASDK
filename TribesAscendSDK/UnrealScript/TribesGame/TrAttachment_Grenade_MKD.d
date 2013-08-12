module UnrealScript.TribesGame.TrAttachment_Grenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Grenade_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Grenade_MKD")); }
	private static __gshared TrAttachment_Grenade_MKD mDefaultProperties;
	@property final static TrAttachment_Grenade_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_Grenade_MKD)("TrAttachment_Grenade_MKD TribesGame.Default__TrAttachment_Grenade_MKD")); }
}
