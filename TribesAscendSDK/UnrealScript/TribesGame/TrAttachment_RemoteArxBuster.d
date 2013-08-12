module UnrealScript.TribesGame.TrAttachment_RemoteArxBuster;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_RemoteArxBuster : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_RemoteArxBuster")); }
	private static __gshared TrAttachment_RemoteArxBuster mDefaultProperties;
	@property final static TrAttachment_RemoteArxBuster DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAttachment_RemoteArxBuster)("TrAttachment_RemoteArxBuster TribesGame.Default__TrAttachment_RemoteArxBuster")); }
}
