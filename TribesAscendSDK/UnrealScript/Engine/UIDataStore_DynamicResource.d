module UnrealScript.Engine.UIDataStore_DynamicResource;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore_GameResource;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_OnlineProfileSettings;
import UnrealScript.Engine.UIResourceCombinationProvider;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_DynamicResource : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataStore_DynamicResource")()); }
	private static __gshared UIDataStore_DynamicResource mDefaultProperties;
	@property final static UIDataStore_DynamicResource DefaultProperties() { mixin(MGDPC!(UIDataStore_DynamicResource, "UIDataStore_DynamicResource Engine.Default__UIDataStore_DynamicResource")()); }
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
			ScriptFunction mOnLoginChange;
			ScriptFunction mRegistered;
			ScriptFunction mUnregistered;
		}
		public @property static final
		{
			ScriptFunction FindProviderTypeIndex() { mixin(MGF!("mFindProviderTypeIndex", "Function Engine.UIDataStore_DynamicResource.FindProviderTypeIndex")()); }
			ScriptFunction GenerateProviderAccessTag() { mixin(MGF!("mGenerateProviderAccessTag", "Function Engine.UIDataStore_DynamicResource.GenerateProviderAccessTag")()); }
			ScriptFunction GetProviderCount() { mixin(MGF!("mGetProviderCount", "Function Engine.UIDataStore_DynamicResource.GetProviderCount")()); }
			ScriptFunction GetResourceProviders() { mixin(MGF!("mGetResourceProviders", "Function Engine.UIDataStore_DynamicResource.GetResourceProviders")()); }
			ScriptFunction GetResourceProviderFields() { mixin(MGF!("mGetResourceProviderFields", "Function Engine.UIDataStore_DynamicResource.GetResourceProviderFields")()); }
			ScriptFunction GetProviderFieldValue() { mixin(MGF!("mGetProviderFieldValue", "Function Engine.UIDataStore_DynamicResource.GetProviderFieldValue")()); }
			ScriptFunction FindProviderIndexByFieldValue() { mixin(MGF!("mFindProviderIndexByFieldValue", "Function Engine.UIDataStore_DynamicResource.FindProviderIndexByFieldValue")()); }
			ScriptFunction OnLoginChange() { mixin(MGF!("mOnLoginChange", "Function Engine.UIDataStore_DynamicResource.OnLoginChange")()); }
			ScriptFunction Registered() { mixin(MGF!("mRegistered", "Function Engine.UIDataStore_DynamicResource.Registered")()); }
			ScriptFunction Unregistered() { mixin(MGF!("mUnregistered", "Function Engine.UIDataStore_DynamicResource.Unregistered")()); }
		}
	}
	struct DynamicResourceProviderDefinition
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIDataStore_DynamicResource.DynamicResourceProviderDefinition")()); }
		@property final auto ref
		{
			ScriptClass ProviderClass() { mixin(MGPS!("ScriptClass", 20)()); }
			ScriptString ProviderClassName() { mixin(MGPS!("ScriptString", 8)()); }
			ScriptName ProviderTag() { mixin(MGPS!("ScriptName", 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UIDataStore_DynamicResource.DynamicResourceProviderDefinition) ResourceProviderDefinitions() { mixin(MGPC!("ScriptArray!(UIDataStore_DynamicResource.DynamicResourceProviderDefinition)", 132)()); }
		UObject.MultiMap_Mirror ResourceProviders() { mixin(MGPC!("UObject.MultiMap_Mirror", 144)()); }
		UIDataStore_GameResource GameResourceDataStore() { mixin(MGPC!("UIDataStore_GameResource", 128)()); }
		UIDataProvider_OnlineProfileSettings ProfileProvider() { mixin(MGPC!("UIDataProvider_OnlineProfileSettings", 124)()); }
		UObject.Pointer VfTable_IUIListElementProvider() { mixin(MGPC!("UObject.Pointer", 120)()); }
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
	bool GetResourceProviders(ScriptName ProviderTag, ref ScriptArray!(UIResourceCombinationProvider) out_Providers)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProviderTag;
		*cast(ScriptArray!(UIResourceCombinationProvider)*)&params[8] = out_Providers;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetResourceProviders, params.ptr, cast(void*)0);
		out_Providers = *cast(ScriptArray!(UIResourceCombinationProvider)*)&params[8];
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
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginChange, params.ptr, cast(void*)0);
	}
	void Registered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.Registered, params.ptr, cast(void*)0);
	}
	void Unregistered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.Unregistered, params.ptr, cast(void*)0);
	}
}
