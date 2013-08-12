module UnrealScript.TribesGame.TrAttachment_Falcon;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Falcon : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Falcon")); }
	private static __gshared TrAttachment_Falcon mDefaultProperties;
	@property final static TrAttachment_Falcon DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_Falcon)("TrAttachment_Falcon TribesGame.Default__TrAttachment_Falcon")); }
}
