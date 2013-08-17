module UnrealScript.TribesGame.TrAttachment_ArxBuster;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_ArxBuster : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_ArxBuster")()); }
	private static __gshared TrAttachment_ArxBuster mDefaultProperties;
	@property final static TrAttachment_ArxBuster DefaultProperties() { mixin(MGDPC!(TrAttachment_ArxBuster, "TrAttachment_ArxBuster TribesGame.Default__TrAttachment_ArxBuster")()); }
}
