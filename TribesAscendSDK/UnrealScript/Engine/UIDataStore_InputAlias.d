module UnrealScript.Engine.UIDataStore_InputAlias;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_StringBase;
import UnrealScript.Engine.UIRoot;

extern(C++) interface UIDataStore_InputAlias : UIDataStore_StringBase
{
public extern(D):
	struct UIDataStoreInputAlias
	{
		private ubyte __buffer__[80];
	public extern(D):
		@property final auto ref
		{
			UIDataStore_InputAlias.UIInputKeyData PlatformInputKeys() { return *cast(UIDataStore_InputAlias.UIInputKeyData*)(cast(size_t)&this + 8); }
			ScriptName AliasName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct UIInputKeyData
	{
		private ubyte __buffer__[24];
	public extern(D):
		@property final auto ref
		{
			ScriptString ButtonFontMarkupString() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			UIRoot.RawInputKeyEventData InputKeyData() { return *cast(UIRoot.RawInputKeyEventData*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(UIDataStore_InputAlias.UIDataStoreInputAlias) InputAliases() { return *cast(ScriptArray!(UIDataStore_InputAlias.UIDataStoreInputAlias)*)(cast(size_t)cast(void*)this + 120); }
final:
	ScriptString GetAliasFontMarkup(ScriptName DesiredAlias, UIRoot.EInputPlatformType OverridePlatform)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DesiredAlias;
		*cast(UIRoot.EInputPlatformType*)&params[8] = OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28570], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	ScriptString GetAliasFontMarkupByIndex(int AliasIndex, UIRoot.EInputPlatformType OverridePlatform)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = AliasIndex;
		*cast(UIRoot.EInputPlatformType*)&params[4] = OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28574], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	ScriptName GetAliasInputKeyName(ScriptName DesiredAlias, UIRoot.EInputPlatformType OverridePlatform)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DesiredAlias;
		*cast(UIRoot.EInputPlatformType*)&params[8] = OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28578], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[12];
	}
	ScriptName GetAliasInputKeyNameByIndex(int AliasIndex, UIRoot.EInputPlatformType OverridePlatform)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = AliasIndex;
		*cast(UIRoot.EInputPlatformType*)&params[4] = OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28582], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	bool GetAliasInputKeyData(UIRoot.RawInputKeyEventData* out_InputKeyData, ScriptName DesiredAlias, UIRoot.EInputPlatformType OverridePlatform)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UIRoot.RawInputKeyEventData*)params.ptr = *out_InputKeyData;
		*cast(ScriptName*)&params[12] = DesiredAlias;
		*cast(UIRoot.EInputPlatformType*)&params[20] = OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28586], params.ptr, cast(void*)0);
		*out_InputKeyData = *cast(UIRoot.RawInputKeyEventData*)params.ptr;
		return *cast(bool*)&params[24];
	}
	bool GetAliasInputKeyDataByIndex(UIRoot.RawInputKeyEventData* out_InputKeyData, int AliasIndex, UIRoot.EInputPlatformType OverridePlatform)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UIRoot.RawInputKeyEventData*)params.ptr = *out_InputKeyData;
		*cast(int*)&params[12] = AliasIndex;
		*cast(UIRoot.EInputPlatformType*)&params[16] = OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28591], params.ptr, cast(void*)0);
		*out_InputKeyData = *cast(UIRoot.RawInputKeyEventData*)params.ptr;
		return *cast(bool*)&params[20];
	}
	int FindInputAliasIndex(ScriptName DesiredAlias)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DesiredAlias;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28596], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool HasAliasMappingForPlatform(ScriptName DesiredAlias, UIRoot.EInputPlatformType DesiredPlatform)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DesiredAlias;
		*cast(UIRoot.EInputPlatformType*)&params[8] = DesiredPlatform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28599], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
