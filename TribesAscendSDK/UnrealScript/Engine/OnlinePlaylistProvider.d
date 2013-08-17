module UnrealScript.Engine.OnlinePlaylistProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface OnlinePlaylistProvider : UIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlinePlaylistProvider")()); }
	private static __gshared OnlinePlaylistProvider mDefaultProperties;
	@property final static OnlinePlaylistProvider DefaultProperties() { mixin(MGDPC!(OnlinePlaylistProvider, "OnlinePlaylistProvider Engine.Default__OnlinePlaylistProvider")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) PlaylistGameTypeNames() { mixin(MGPC!("ScriptArray!(ScriptName)", 128)()); }
			int Priority() { mixin(MGPC!("int", 156)()); }
			ScriptString DisplayName() { mixin(MGPC!("ScriptString", 140)()); }
			int PlaylistId() { mixin(MGPC!("int", 124)()); }
		}
		bool bIsArbitrated() { mixin(MGBPC!(152, 0x1)()); }
		bool bIsArbitrated(bool val) { mixin(MSBPC!(152, 0x1)()); }
	}
}
