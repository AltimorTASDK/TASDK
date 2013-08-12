module UnrealScript.TribesGame.TrAttachment_SpinfusorD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SpinfusorD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_SpinfusorD")); }
	private static __gshared TrAttachment_SpinfusorD mDefaultProperties;
	@property final static TrAttachment_SpinfusorD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_SpinfusorD)("TrAttachment_SpinfusorD TribesGame.Default__TrAttachment_SpinfusorD")); }
}
