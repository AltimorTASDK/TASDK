module UnrealScript.IpDrv.HTTPDownload;

import ScriptClasses;
import UnrealScript.Engine.Download;

extern(C++) interface HTTPDownload : Download
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.HTTPDownload")); }
	private static __gshared HTTPDownload mDefaultProperties;
	@property final static HTTPDownload DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(HTTPDownload)("HTTPDownload IpDrv.Default__HTTPDownload")); }
	@property final
	{
		auto ref
		{
			ScriptString ProxyServerHost() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2672); }
			int ProxyServerPort() { return *cast(int*)(cast(size_t)cast(void*)this + 2684); }
			ScriptString RedirectToURL() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
			float ConnectionTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 2692); }
		}
		bool UseCompression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
		bool UseCompression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
		bool MaxRedirection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2688) & 0x1) != 0; }
		bool MaxRedirection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2688) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2688) &= ~0x1; } return val; }
	}
}
