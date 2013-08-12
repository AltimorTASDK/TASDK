module UnrealScript.TribesGame.TrAttachment_ArmoredClaymore;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ArmoredClaymore : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_ArmoredClaymore")); }
	private static __gshared TrAttachment_ArmoredClaymore mDefaultProperties;
	@property final static TrAttachment_ArmoredClaymore DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_ArmoredClaymore)("TrAttachment_ArmoredClaymore TribesGame.Default__TrAttachment_ArmoredClaymore")); }
}
