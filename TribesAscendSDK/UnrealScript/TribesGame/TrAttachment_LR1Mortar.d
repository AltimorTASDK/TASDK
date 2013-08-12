module UnrealScript.TribesGame.TrAttachment_LR1Mortar;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_LR1Mortar : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_LR1Mortar")); }
	private static __gshared TrAttachment_LR1Mortar mDefaultProperties;
	@property final static TrAttachment_LR1Mortar DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_LR1Mortar)("TrAttachment_LR1Mortar TribesGame.Default__TrAttachment_LR1Mortar")); }
}
