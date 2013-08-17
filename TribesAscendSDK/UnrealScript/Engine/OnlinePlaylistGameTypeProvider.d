module UnrealScript.Engine.OnlinePlaylistGameTypeProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface OnlinePlaylistGameTypeProvider : UIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlinePlaylistGameTypeProvider")()); }
	private static __gshared OnlinePlaylistGameTypeProvider mDefaultProperties;
	@property final static OnlinePlaylistGameTypeProvider DefaultProperties() { mixin(MGDPC!(OnlinePlaylistGameTypeProvider, "OnlinePlaylistGameTypeProvider Engine.Default__OnlinePlaylistGameTypeProvider")()); }
	@property final auto ref
	{
		int GameTypeId() { mixin(MGPC!("int", 156)()); }
		ScriptString Description() { mixin(MGPC!("ScriptString", 144)()); }
		ScriptString DisplayName() { mixin(MGPC!("ScriptString", 132)()); }
		ScriptName PlaylistGameTypeName() { mixin(MGPC!("ScriptName", 124)()); }
	}
}
