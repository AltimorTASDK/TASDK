module UnrealScript.TribesGame.TrAttachment_NJ4SMG;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_NJ4SMG : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_NJ4SMG")); }
	private static __gshared TrAttachment_NJ4SMG mDefaultProperties;
	@property final static TrAttachment_NJ4SMG DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_NJ4SMG)("TrAttachment_NJ4SMG TribesGame.Default__TrAttachment_NJ4SMG")); }
}
