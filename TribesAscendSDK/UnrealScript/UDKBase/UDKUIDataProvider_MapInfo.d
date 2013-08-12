module UnrealScript.UDKBase.UDKUIDataProvider_MapInfo;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIResourceDataProvider;

extern(C++) interface UDKUIDataProvider_MapInfo : UDKUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKUIDataProvider_MapInfo")); }
	private static __gshared UDKUIDataProvider_MapInfo mDefaultProperties;
	@property final static UDKUIDataProvider_MapInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKUIDataProvider_MapInfo)("UDKUIDataProvider_MapInfo UDKBase.Default__UDKUIDataProvider_MapInfo")); }
	@property final auto ref
	{
		ScriptString PreviewImageMarkup() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
		ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
		ScriptString NumPlayers() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
		ScriptString MapName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
		int MapId() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
	}
}
