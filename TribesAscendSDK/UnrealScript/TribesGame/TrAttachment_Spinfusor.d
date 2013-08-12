module UnrealScript.TribesGame.TrAttachment_Spinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Spinfusor : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Spinfusor")); }
	private static __gshared TrAttachment_Spinfusor mDefaultProperties;
	@property final static TrAttachment_Spinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_Spinfusor)("TrAttachment_Spinfusor TribesGame.Default__TrAttachment_Spinfusor")); }
}
