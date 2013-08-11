module UnrealScript.Engine.UIDataStore_InputAlias;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_StringBase;
import UnrealScript.Engine.UIRoot;

extern(C++) interface UIDataStore_InputAlias : UIDataStore_StringBase
{
	struct UIDataStoreInputAlias
	{
		public @property final auto ref UIDataStore_InputAlias.UIInputKeyData PlatformInputKeys() { return *cast(UIDataStore_InputAlias.UIInputKeyData*)(cast(size_t)&this + 8); }
		private ubyte __PlatformInputKeys[24];
		public @property final auto ref ScriptName AliasName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __AliasName[8];
	}
	struct UIInputKeyData
	{
		public @property final auto ref ScriptString ButtonFontMarkupString() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __ButtonFontMarkupString[12];
		public @property final auto ref UIRoot.RawInputKeyEventData InputKeyData() { return *cast(UIRoot.RawInputKeyEventData*)(cast(size_t)&this + 0); }
		private ubyte __InputKeyData[12];
	}
	public @property final auto ref ScriptArray!(UIDataStore_InputAlias.UIDataStoreInputAlias) InputAliases() { return *cast(ScriptArray!(UIDataStore_InputAlias.UIDataStoreInputAlias)*)(cast(size_t)cast(void*)this + 120); }
	final ScriptString GetAliasFontMarkup(ScriptName DesiredAlias, UIRoot.EInputPlatformType OverridePlatform)
	{
		ubyte params[21];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DesiredAlias;
		*cast(UIRoot.EInputPlatformType*)&params[8] = OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28570], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final ScriptString GetAliasFontMarkupByIndex(int AliasIndex, UIRoot.EInputPlatformType OverridePlatform)
	{
		ubyte params[17];
		params[] = 0;
		*cast(int*)params.ptr = AliasIndex;
		*cast(UIRoot.EInputPlatformType*)&params[4] = OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28574], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	final ScriptName GetAliasInputKeyName(ScriptName DesiredAlias, UIRoot.EInputPlatformType OverridePlatform)
	{
		ubyte params[17];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DesiredAlias;
		*cast(UIRoot.EInputPlatformType*)&params[8] = OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28578], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[12];
	}
	final ScriptName GetAliasInputKeyNameByIndex(int AliasIndex, UIRoot.EInputPlatformType OverridePlatform)
	{
		ubyte params[13];
		params[] = 0;
		*cast(int*)params.ptr = AliasIndex;
		*cast(UIRoot.EInputPlatformType*)&params[4] = OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28582], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	final bool GetAliasInputKeyData(UIRoot.RawInputKeyEventData* out_InputKeyData, ScriptName DesiredAlias, UIRoot.EInputPlatformType OverridePlatform)
	{
		ubyte params[25];
		params[] = 0;
		*cast(UIRoot.RawInputKeyEventData*)params.ptr = *out_InputKeyData;
		*cast(ScriptName*)&params[12] = DesiredAlias;
		*cast(UIRoot.EInputPlatformType*)&params[20] = OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28586], params.ptr, cast(void*)0);
		*out_InputKeyData = *cast(UIRoot.RawInputKeyEventData*)params.ptr;
		return *cast(bool*)&params[24];
	}
	final bool GetAliasInputKeyDataByIndex(UIRoot.RawInputKeyEventData* out_InputKeyData, int AliasIndex, UIRoot.EInputPlatformType OverridePlatform)
	{
		ubyte params[21];
		params[] = 0;
		*cast(UIRoot.RawInputKeyEventData*)params.ptr = *out_InputKeyData;
		*cast(int*)&params[12] = AliasIndex;
		*cast(UIRoot.EInputPlatformType*)&params[16] = OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28591], params.ptr, cast(void*)0);
		*out_InputKeyData = *cast(UIRoot.RawInputKeyEventData*)params.ptr;
		return *cast(bool*)&params[20];
	}
	final int FindInputAliasIndex(ScriptName DesiredAlias)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DesiredAlias;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28596], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final bool HasAliasMappingForPlatform(ScriptName DesiredAlias, UIRoot.EInputPlatformType DesiredPlatform)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DesiredAlias;
		*cast(UIRoot.EInputPlatformType*)&params[8] = DesiredPlatform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28599], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
