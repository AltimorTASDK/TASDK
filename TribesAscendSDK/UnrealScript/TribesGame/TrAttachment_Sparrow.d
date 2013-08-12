module UnrealScript.TribesGame.TrAttachment_Sparrow;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Sparrow : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Sparrow")); }
	private static __gshared TrAttachment_Sparrow mDefaultProperties;
	@property final static TrAttachment_Sparrow DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_Sparrow)("TrAttachment_Sparrow TribesGame.Default__TrAttachment_Sparrow")); }
}
