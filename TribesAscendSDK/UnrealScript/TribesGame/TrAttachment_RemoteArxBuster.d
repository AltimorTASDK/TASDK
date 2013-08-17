module UnrealScript.TribesGame.TrAttachment_RemoteArxBuster;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_RemoteArxBuster : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_RemoteArxBuster")); }
	private static __gshared TrAttachment_RemoteArxBuster mDefaultProperties;
	@property final static TrAttachment_RemoteArxBuster DefaultProperties() { mixin(MGDPC("TrAttachment_RemoteArxBuster", "TrAttachment_RemoteArxBuster TribesGame.Default__TrAttachment_RemoteArxBuster")); }
}
