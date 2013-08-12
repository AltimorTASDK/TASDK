module UnrealScript.TribesGame.TrAttachment_Spinfusor_100X;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Spinfusor_100X : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Spinfusor_100X")); }
	private static __gshared TrAttachment_Spinfusor_100X mDefaultProperties;
	@property final static TrAttachment_Spinfusor_100X DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_Spinfusor_100X)("TrAttachment_Spinfusor_100X TribesGame.Default__TrAttachment_Spinfusor_100X")); }
}
