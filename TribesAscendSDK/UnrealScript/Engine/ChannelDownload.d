module UnrealScript.Engine.ChannelDownload;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Download;

extern(C++) interface ChannelDownload : Download
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ChannelDownload")()); }
	private static __gshared ChannelDownload mDefaultProperties;
	@property final static ChannelDownload DefaultProperties() { mixin(MGDPC!(ChannelDownload, "ChannelDownload Engine.Default__ChannelDownload")()); }
}
