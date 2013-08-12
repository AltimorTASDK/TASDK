module UnrealScript.TribesGame.TrAttachment_PlasmaGun;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_PlasmaGun : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_PlasmaGun")); }
	private static __gshared TrAttachment_PlasmaGun mDefaultProperties;
	@property final static TrAttachment_PlasmaGun DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_PlasmaGun)("TrAttachment_PlasmaGun TribesGame.Default__TrAttachment_PlasmaGun")); }
}
