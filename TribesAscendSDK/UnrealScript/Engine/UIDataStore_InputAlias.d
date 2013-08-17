module UnrealScript.Engine.UIDataStore_InputAlias;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore_StringBase;
import UnrealScript.Engine.UIRoot;

extern(C++) interface UIDataStore_InputAlias : UIDataStore_StringBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataStore_InputAlias")()); }
	private static __gshared UIDataStore_InputAlias mDefaultProperties;
	@property final static UIDataStore_InputAlias DefaultProperties() { mixin(MGDPC!(UIDataStore_InputAlias, "UIDataStore_InputAlias Engine.Default__UIDataStore_InputAlias")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetAliasFontMarkup;
			ScriptFunction mGetAliasFontMarkupByIndex;
			ScriptFunction mGetAliasInputKeyName;
			ScriptFunction mGetAliasInputKeyNameByIndex;
			ScriptFunction mGetAliasInputKeyData;
			ScriptFunction mGetAliasInputKeyDataByIndex;
			ScriptFunction mFindInputAliasIndex;
			ScriptFunction mHasAliasMappingForPlatform;
		}
		public @property static final
		{
			ScriptFunction GetAliasFontMarkup() { mixin(MGF!("mGetAliasFontMarkup", "Function Engine.UIDataStore_InputAlias.GetAliasFontMarkup")()); }
			ScriptFunction GetAliasFontMarkupByIndex() { mixin(MGF!("mGetAliasFontMarkupByIndex", "Function Engine.UIDataStore_InputAlias.GetAliasFontMarkupByIndex")()); }
			ScriptFunction GetAliasInputKeyName() { mixin(MGF!("mGetAliasInputKeyName", "Function Engine.UIDataStore_InputAlias.GetAliasInputKeyName")()); }
			ScriptFunction GetAliasInputKeyNameByIndex() { mixin(MGF!("mGetAliasInputKeyNameByIndex", "Function Engine.UIDataStore_InputAlias.GetAliasInputKeyNameByIndex")()); }
			ScriptFunction GetAliasInputKeyData() { mixin(MGF!("mGetAliasInputKeyData", "Function Engine.UIDataStore_InputAlias.GetAliasInputKeyData")()); }
			ScriptFunction GetAliasInputKeyDataByIndex() { mixin(MGF!("mGetAliasInputKeyDataByIndex", "Function Engine.UIDataStore_InputAlias.GetAliasInputKeyDataByIndex")()); }
			ScriptFunction FindInputAliasIndex() { mixin(MGF!("mFindInputAliasIndex", "Function Engine.UIDataStore_InputAlias.FindInputAliasIndex")()); }
			ScriptFunction HasAliasMappingForPlatform() { mixin(MGF!("mHasAliasMappingForPlatform", "Function Engine.UIDataStore_InputAlias.HasAliasMappingForPlatform")()); }
		}
	}
	struct UIDataStoreInputAlias
	{
		private ubyte __buffer__[80];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIDataStore_InputAlias.UIDataStoreInputAlias")()); }
		@property final auto ref
		{
			UIDataStore_InputAlias.UIInputKeyData PlatformInputKeys() { mixin(MGPS!("UIDataStore_InputAlias.UIInputKeyData", 8)()); }
			ScriptName AliasName() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	struct UIInputKeyData
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIDataStore_InputAlias.UIInputKeyData")()); }
		@property final auto ref
		{
			ScriptString ButtonFontMarkupString() { mixin(MGPS!("ScriptString", 12)()); }
			UIRoot.RawInputKeyEventData InputKeyData() { mixin(MGPS!("UIRoot.RawInputKeyEventData", 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UIDataStore_InputAlias.UIDataStoreInputAlias) InputAliases() { mixin(MGPC!("ScriptArray!(UIDataStore_InputAlias.UIDataStoreInputAlias)", 120)()); }
		// ERROR: Unsupported object class 'MapProperty' for the property named 'InputAliasLookupMap'!
	}
final:
	ScriptString GetAliasFontMarkup(ScriptName DesiredAlias, UIRoot.EInputPlatformType* OverridePlatform = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DesiredAlias;
		if (OverridePlatform !is null)
			*cast(UIRoot.EInputPlatformType*)&params[8] = *OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAliasFontMarkup, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	ScriptString GetAliasFontMarkupByIndex(int AliasIndex, UIRoot.EInputPlatformType* OverridePlatform = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = AliasIndex;
		if (OverridePlatform !is null)
			*cast(UIRoot.EInputPlatformType*)&params[4] = *OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAliasFontMarkupByIndex, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	ScriptName GetAliasInputKeyName(ScriptName DesiredAlias, UIRoot.EInputPlatformType* OverridePlatform = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DesiredAlias;
		if (OverridePlatform !is null)
			*cast(UIRoot.EInputPlatformType*)&params[8] = *OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAliasInputKeyName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[12];
	}
	ScriptName GetAliasInputKeyNameByIndex(int AliasIndex, UIRoot.EInputPlatformType* OverridePlatform = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = AliasIndex;
		if (OverridePlatform !is null)
			*cast(UIRoot.EInputPlatformType*)&params[4] = *OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAliasInputKeyNameByIndex, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	bool GetAliasInputKeyData(ref UIRoot.RawInputKeyEventData out_InputKeyData, ScriptName DesiredAlias, UIRoot.EInputPlatformType* OverridePlatform = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UIRoot.RawInputKeyEventData*)params.ptr = out_InputKeyData;
		*cast(ScriptName*)&params[12] = DesiredAlias;
		if (OverridePlatform !is null)
			*cast(UIRoot.EInputPlatformType*)&params[20] = *OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAliasInputKeyData, params.ptr, cast(void*)0);
		out_InputKeyData = *cast(UIRoot.RawInputKeyEventData*)params.ptr;
		return *cast(bool*)&params[24];
	}
	bool GetAliasInputKeyDataByIndex(ref UIRoot.RawInputKeyEventData out_InputKeyData, int AliasIndex, UIRoot.EInputPlatformType* OverridePlatform = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(UIRoot.RawInputKeyEventData*)params.ptr = out_InputKeyData;
		*cast(int*)&params[12] = AliasIndex;
		if (OverridePlatform !is null)
			*cast(UIRoot.EInputPlatformType*)&params[16] = *OverridePlatform;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAliasInputKeyDataByIndex, params.ptr, cast(void*)0);
		out_InputKeyData = *cast(UIRoot.RawInputKeyEventData*)params.ptr;
		return *cast(bool*)&params[20];
	}
	int FindInputAliasIndex(ScriptName DesiredAlias)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DesiredAlias;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindInputAliasIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool HasAliasMappingForPlatform(ScriptName DesiredAlias, UIRoot.EInputPlatformType DesiredPlatform)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DesiredAlias;
		*cast(UIRoot.EInputPlatformType*)&params[8] = DesiredPlatform;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasAliasMappingForPlatform, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
