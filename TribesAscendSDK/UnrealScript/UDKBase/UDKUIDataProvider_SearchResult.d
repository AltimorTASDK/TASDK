module UnrealScript.UDKBase.UDKUIDataProvider_SearchResult;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataProvider_Settings;

extern(C++) interface UDKUIDataProvider_SearchResult : UIDataProvider_Settings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKUIDataProvider_SearchResult")); }
	private static __gshared UDKUIDataProvider_SearchResult mDefaultProperties;
	@property final static UDKUIDataProvider_SearchResult DefaultProperties() { mixin(MGDPC("UDKUIDataProvider_SearchResult", "UDKUIDataProvider_SearchResult UDKBase.Default__UDKUIDataProvider_SearchResult")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsPrivateServer;
		public @property static final ScriptFunction IsPrivateServer() { mixin(MGF("mIsPrivateServer", "Function UDKBase.UDKUIDataProvider_SearchResult.IsPrivateServer")); }
	}
	@property final auto ref
	{
		ScriptString IconFontPathName() { mixin(MGPC("ScriptString", 176)); }
		ScriptName MapNameTag() { mixin(MGPC("ScriptName", 168)); }
		ScriptName ServerFlagsTag() { mixin(MGPC("ScriptName", 160)); }
		ScriptName GameModeFriendlyNameTag() { mixin(MGPC("ScriptName", 152)); }
		ScriptName PlayerRatioTag() { mixin(MGPC("ScriptName", 144)); }
	}
	final bool IsPrivateServer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPrivateServer, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
