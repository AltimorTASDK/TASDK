module UnrealScript.TribesGame.TrAttachment_Thumper;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Thumper : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Thumper")); }
	private static __gshared TrAttachment_Thumper mDefaultProperties;
	@property final static TrAttachment_Thumper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_Thumper)("TrAttachment_Thumper TribesGame.Default__TrAttachment_Thumper")); }
}
