module UnrealScript.UDKBase.UDKUIDataProvider_SearchResult;

import ScriptClasses;
import UnrealScript.Engine.UIDataProvider_Settings;

extern(C++) interface UDKUIDataProvider_SearchResult : UIDataProvider_Settings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKUIDataProvider_SearchResult")); }
	private static __gshared UDKUIDataProvider_SearchResult mDefaultProperties;
	@property final static UDKUIDataProvider_SearchResult DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKUIDataProvider_SearchResult)("UDKUIDataProvider_SearchResult UDKBase.Default__UDKUIDataProvider_SearchResult")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsPrivateServer;
		public @property static final ScriptFunction IsPrivateServer() { return mIsPrivateServer ? mIsPrivateServer : (mIsPrivateServer = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataProvider_SearchResult.IsPrivateServer")); }
	}
	@property final auto ref
	{
		ScriptString IconFontPathName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
		ScriptName MapNameTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 168); }
		ScriptName ServerFlagsTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 160); }
		ScriptName GameModeFriendlyNameTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 152); }
		ScriptName PlayerRatioTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 144); }
	}
	final bool IsPrivateServer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPrivateServer, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
