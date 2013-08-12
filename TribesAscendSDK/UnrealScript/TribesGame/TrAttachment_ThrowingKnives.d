module UnrealScript.TribesGame.TrAttachment_ThrowingKnives;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ThrowingKnives : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_ThrowingKnives")); }
	private static __gshared TrAttachment_ThrowingKnives mDefaultProperties;
	@property final static TrAttachment_ThrowingKnives DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_ThrowingKnives)("TrAttachment_ThrowingKnives TribesGame.Default__TrAttachment_ThrowingKnives")); }
}
