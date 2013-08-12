module UnrealScript.TribesGame.TrAttachment_ThumperD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ThumperD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_ThumperD")); }
	private static __gshared TrAttachment_ThumperD mDefaultProperties;
	@property final static TrAttachment_ThumperD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_ThumperD)("TrAttachment_ThumperD TribesGame.Default__TrAttachment_ThumperD")); }
}
