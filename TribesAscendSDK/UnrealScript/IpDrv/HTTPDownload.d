module UnrealScript.IpDrv.HTTPDownload;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Download;

extern(C++) interface HTTPDownload : Download
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class IpDrv.HTTPDownload")); }
	private static __gshared HTTPDownload mDefaultProperties;
	@property final static HTTPDownload DefaultProperties() { mixin(MGDPC("HTTPDownload", "HTTPDownload IpDrv.Default__HTTPDownload")); }
	@property final
	{
		auto ref
		{
			ScriptString ProxyServerHost() { mixin(MGPC("ScriptString", 2672)); }
			int ProxyServerPort() { mixin(MGPC("int", 2684)); }
			ScriptString RedirectToURL() { mixin(MGPC("ScriptString", 72)); }
			float ConnectionTimeout() { mixin(MGPC("float", 2692)); }
		}
		bool UseCompression() { mixin(MGBPC(84, 0x1)); }
		bool UseCompression(bool val) { mixin(MSBPC(84, 0x1)); }
		bool MaxRedirection() { mixin(MGBPC(2688, 0x1)); }
		bool MaxRedirection(bool val) { mixin(MSBPC(2688, 0x1)); }
	}
}
