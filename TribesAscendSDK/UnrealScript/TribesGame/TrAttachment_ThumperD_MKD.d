module UnrealScript.TribesGame.TrAttachment_ThumperD_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ThumperD_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_ThumperD_MKD")); }
	private static __gshared TrAttachment_ThumperD_MKD mDefaultProperties;
	@property final static TrAttachment_ThumperD_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_ThumperD_MKD)("TrAttachment_ThumperD_MKD TribesGame.Default__TrAttachment_ThumperD_MKD")); }
}
