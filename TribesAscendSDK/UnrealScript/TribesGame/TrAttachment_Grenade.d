module UnrealScript.TribesGame.TrAttachment_Grenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Grenade : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Grenade")); }
	private static __gshared TrAttachment_Grenade mDefaultProperties;
	@property final static TrAttachment_Grenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_Grenade)("TrAttachment_Grenade TribesGame.Default__TrAttachment_Grenade")); }
}
