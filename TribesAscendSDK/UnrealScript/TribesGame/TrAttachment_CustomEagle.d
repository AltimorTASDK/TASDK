module UnrealScript.TribesGame.TrAttachment_CustomEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_CustomEagle : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_CustomEagle")); }
	private static __gshared TrAttachment_CustomEagle mDefaultProperties;
	@property final static TrAttachment_CustomEagle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_CustomEagle)("TrAttachment_CustomEagle TribesGame.Default__TrAttachment_CustomEagle")); }
}
