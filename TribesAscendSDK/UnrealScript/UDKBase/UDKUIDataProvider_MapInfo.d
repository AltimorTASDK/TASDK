module UnrealScript.UDKBase.UDKUIDataProvider_MapInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKUIResourceDataProvider;

extern(C++) interface UDKUIDataProvider_MapInfo : UDKUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKUIDataProvider_MapInfo")); }
	private static __gshared UDKUIDataProvider_MapInfo mDefaultProperties;
	@property final static UDKUIDataProvider_MapInfo DefaultProperties() { mixin(MGDPC("UDKUIDataProvider_MapInfo", "UDKUIDataProvider_MapInfo UDKBase.Default__UDKUIDataProvider_MapInfo")); }
	@property final auto ref
	{
		ScriptString PreviewImageMarkup() { mixin(MGPC("ScriptString", 192)); }
		ScriptString Description() { mixin(MGPC("ScriptString", 180)); }
		ScriptString NumPlayers() { mixin(MGPC("ScriptString", 168)); }
		ScriptString MapName() { mixin(MGPC("ScriptString", 156)); }
		int MapId() { mixin(MGPC("int", 152)); }
	}
}
