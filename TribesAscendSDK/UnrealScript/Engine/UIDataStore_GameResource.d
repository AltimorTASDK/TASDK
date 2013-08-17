module UnrealScript.Engine.UIDataStore_GameResource;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIResourceDataProvider;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_GameResource : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataStore_GameResource")); }
	private static __gshared UIDataStore_GameResource mDefaultProperties;
	@property final static UIDataStore_GameResource DefaultProperties() { mixin(MGDPC("UIDataStore_GameResource", "UIDataStore_GameResource Engine.Default__UIDataStore_GameResource")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFindProviderTypeIndex;
			ScriptFunction mGenerateProviderAccessTag;
			ScriptFunction mGetProviderCount;
			ScriptFunction mGetResourceProviders;
			ScriptFunction mGetResourceProviderFields;
			ScriptFunction mGetProviderFieldValue;
			ScriptFunction mFindProviderIndexByFieldValue;
		}
		public @property static final
		{
			ScriptFunction FindProviderTypeIndex() { mixin(MGF("mFindProviderTypeIndex", "Function Engine.UIDataStore_GameResource.FindProviderTypeIndex")); }
			ScriptFunction GenerateProviderAccessTag() { mixin(MGF("mGenerateProviderAccessTag", "Function Engine.UIDataStore_GameResource.GenerateProviderAccessTag")); }
			ScriptFunction GetProviderCount() { mixin(MGF("mGetProviderCount", "Function Engine.UIDataStore_GameResource.GetProviderCount")); }
			ScriptFunction GetResourceProviders() { mixin(MGF("mGetResourceProviders", "Function Engine.UIDataStore_GameResource.GetResourceProviders")); }
			ScriptFunction GetResourceProviderFields() { mixin(MGF("mGetResourceProviderFields", "Function Engine.UIDataStore_GameResource.GetResourceProviderFields")); }
			ScriptFunction GetProviderFieldValue() { mixin(MGF("mGetProviderFieldValue", "Function Engine.UIDataStore_GameResource.GetProviderFieldValue")); }
			ScriptFunction FindProviderIndexByFieldValue() { mixin(MGF("mFindProviderIndexByFieldValue", "Function Engine.UIDataStore_GameResource.FindProviderIndexByFieldValue")); }
		}
	}
	struct GameResourceDataProvider
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.UIDataStore_GameResource.GameResourceDataProvider")); }
		@property final
		{
			auto ref
			{
				ScriptClass ProviderClass() { mixin(MGPS("ScriptClass", 24)); }
				ScriptString ProviderClassName() { mixin(MGPS("ScriptString", 8)); }
				ScriptName ProviderTag() { mixin(MGPS("ScriptName", 0)); }
			}
			bool bExpandProviders() { mixin(MGBPS(20, 0x1)); }
			bool bExpandProviders(bool val) { mixin(MSBPS(20, 0x1)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UIDataStore_GameResource.GameResourceDataProvider) ElementProviderTypes() { mixin(MGPC("ScriptArray!(UIDataStore_GameResource.GameResourceDataProvider)", 124)); }
		UObject.MultiMap_Mirror ListElementProviders() { mixin(MGPC("UObject.MultiMap_Mirror", 136)); }
		UObject.Pointer VfTable_IUIListElementProvider() { mixin(MGPC("UObject.Pointer", 120)); }
	}
final:
	int FindProviderTypeIndex(ScriptName ProviderTag)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindProviderTypeIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	ScriptName GenerateProviderAccessTag(int ProviderIndex, int InstanceIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ProviderIndex;
		*cast(int*)&params[4] = InstanceIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GenerateProviderAccessTag, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	int GetProviderCount(ScriptName ProviderTag)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProviderCount, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool GetResourceProviders(ScriptName ProviderTag, ref ScriptArray!(UIResourceDataProvider) out_Providers)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptArray!(UIResourceDataProvider)*)&params[8] = out_Providers;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetResourceProviders, params.ptr, cast(void*)0);
		out_Providers = *cast(ScriptArray!(UIResourceDataProvider)*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool GetResourceProviderFields(ScriptName ProviderTag, ref ScriptArray!(ScriptName) ProviderFieldTags)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptArray!(ScriptName)*)&params[8] = ProviderFieldTags;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetResourceProviderFields, params.ptr, cast(void*)0);
		ProviderFieldTags = *cast(ScriptArray!(ScriptName)*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool GetProviderFieldValue(ScriptName ProviderTag, ScriptName SearchField, int ProviderIndex, ref UIRoot.UIProviderScriptFieldValue out_FieldValue)
	{
		ubyte params[108];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptName*)&params[8] = SearchField;
		*cast(int*)&params[16] = ProviderIndex;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[20] = out_FieldValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProviderFieldValue, params.ptr, cast(void*)0);
		out_FieldValue = *cast(UIRoot.UIProviderScriptFieldValue*)&params[20];
		return *cast(bool*)&params[104];
	}
	int FindProviderIndexByFieldValue(ScriptName ProviderTag, ScriptName SearchField, ref in UIRoot.UIProviderScriptFieldValue ValueToSearchFor)
	{
		ubyte params[104];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptName*)&params[8] = SearchField;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[16] = cast(UIRoot.UIProviderScriptFieldValue)ValueToSearchFor;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindProviderIndexByFieldValue, params.ptr, cast(void*)0);
		return *cast(int*)&params[100];
	}
}
