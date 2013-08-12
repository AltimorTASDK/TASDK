module UnrealScript.TribesGame.TrAttachment_ArxBuster;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ArxBuster : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_ArxBuster")); }
	private static __gshared TrAttachment_ArxBuster mDefaultProperties;
	@property final static TrAttachment_ArxBuster DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_ArxBuster)("TrAttachment_ArxBuster TribesGame.Default__TrAttachment_ArxBuster")); }
}
