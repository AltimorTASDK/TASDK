module UnrealScript.Engine.UIResourceCombinationProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataProvider_OnlineProfileSettings;
import UnrealScript.Engine.UIResourceDataProvider;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIResourceCombinationProvider : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIResourceCombinationProvider")); }
	private static __gshared UIResourceCombinationProvider mDefaultProperties;
	@property final static UIResourceCombinationProvider DefaultProperties() { mixin(MGDPC("UIResourceCombinationProvider", "UIResourceCombinationProvider Engine.Default__UIResourceCombinationProvider")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitializeProvider;
			ScriptFunction mGetElementProviderTags;
			ScriptFunction mGetElementCount;
			ScriptFunction mGetListElements;
			ScriptFunction mIsElementEnabled;
			ScriptFunction mGetElementCellSchemaProvider;
			ScriptFunction mGetElementCellValueProvider;
			ScriptFunction mGetElementCellTags;
			ScriptFunction mGetCellFieldType;
			ScriptFunction mGetCellFieldValue;
			ScriptFunction mClearProviderReferences;
			ScriptFunction mReplaceProviderValue;
			ScriptFunction mReplaceProviderCollection;
		}
		public @property static final
		{
			ScriptFunction InitializeProvider() { mixin(MGF("mInitializeProvider", "Function Engine.UIResourceCombinationProvider.InitializeProvider")); }
			ScriptFunction GetElementProviderTags() { mixin(MGF("mGetElementProviderTags", "Function Engine.UIResourceCombinationProvider.GetElementProviderTags")); }
			ScriptFunction GetElementCount() { mixin(MGF("mGetElementCount", "Function Engine.UIResourceCombinationProvider.GetElementCount")); }
			ScriptFunction GetListElements() { mixin(MGF("mGetListElements", "Function Engine.UIResourceCombinationProvider.GetListElements")); }
			ScriptFunction IsElementEnabled() { mixin(MGF("mIsElementEnabled", "Function Engine.UIResourceCombinationProvider.IsElementEnabled")); }
			ScriptFunction GetElementCellSchemaProvider() { mixin(MGF("mGetElementCellSchemaProvider", "Function Engine.UIResourceCombinationProvider.GetElementCellSchemaProvider")); }
			ScriptFunction GetElementCellValueProvider() { mixin(MGF("mGetElementCellValueProvider", "Function Engine.UIResourceCombinationProvider.GetElementCellValueProvider")); }
			ScriptFunction GetElementCellTags() { mixin(MGF("mGetElementCellTags", "Function Engine.UIResourceCombinationProvider.GetElementCellTags")); }
			ScriptFunction GetCellFieldType() { mixin(MGF("mGetCellFieldType", "Function Engine.UIResourceCombinationProvider.GetCellFieldType")); }
			ScriptFunction GetCellFieldValue() { mixin(MGF("mGetCellFieldValue", "Function Engine.UIResourceCombinationProvider.GetCellFieldValue")); }
			ScriptFunction ClearProviderReferences() { mixin(MGF("mClearProviderReferences", "Function Engine.UIResourceCombinationProvider.ClearProviderReferences")); }
			ScriptFunction ReplaceProviderValue() { mixin(MGF("mReplaceProviderValue", "Function Engine.UIResourceCombinationProvider.ReplaceProviderValue")); }
			ScriptFunction ReplaceProviderCollection() { mixin(MGF("mReplaceProviderCollection", "Function Engine.UIResourceCombinationProvider.ReplaceProviderCollection")); }
		}
	}
	@property final auto ref
	{
		UIDataProvider_OnlineProfileSettings ProfileProvider() { mixin(MGPC("UIDataProvider_OnlineProfileSettings", 100)); }
		UIResourceDataProvider StaticDataProvider() { mixin(MGPC("UIResourceDataProvider", 96)); }
		Pointer VfTable_IUIListElementCellProvider() { mixin(MGPC("Pointer", 92)); }
		Pointer VfTable_IUIListElementProvider() { mixin(MGPC("Pointer", 88)); }
	}
final:
	void InitializeProvider(bool bIsEditor, UIResourceDataProvider InStaticResourceProvider, UIDataProvider_OnlineProfileSettings InProfileProvider)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bIsEditor;
		*cast(UIResourceDataProvider*)&params[4] = InStaticResourceProvider;
		*cast(UIDataProvider_OnlineProfileSettings*)&params[8] = InProfileProvider;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeProvider, params.ptr, cast(void*)0);
	}
	ScriptArray!(ScriptName) GetElementProviderTags()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementProviderTags, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(ScriptName)*)params.ptr;
	}
	int GetElementCount(ScriptName FieldName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementCount, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool GetListElements(ScriptName FieldName, ref ScriptArray!(int) out_Elements)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptArray!(int)*)&params[8] = out_Elements;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetListElements, params.ptr, cast(void*)0);
		out_Elements = *cast(ScriptArray!(int)*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool IsElementEnabled(ScriptName FieldName, int CollectionIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = CollectionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsElementEnabled, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool GetElementCellSchemaProvider(ScriptName FieldName, ref 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* out_SchemaProvider)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)&params[8] = out_SchemaProvider;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementCellSchemaProvider, params.ptr, cast(void*)0);
		out_SchemaProvider = *cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)&params[8];
		return *cast(bool*)&params[16];
	}
	bool GetElementCellValueProvider(ScriptName FieldName, int ListIndex, ref 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* out_ValueProvider)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = ListIndex;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)&params[12] = out_ValueProvider;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementCellValueProvider, params.ptr, cast(void*)0);
		out_ValueProvider = *cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)&params[12];
		return *cast(bool*)&params[20];
	}
	void GetElementCellTags(ScriptName FieldName, ref ScriptArray!(ScriptName) CellFieldTags, ScriptArray!(ScriptString)* ColumnHeaderDisplayText = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptArray!(ScriptName)*)&params[8] = CellFieldTags;
		if (ColumnHeaderDisplayText !is null)
			*cast(ScriptArray!(ScriptString)*)&params[20] = *ColumnHeaderDisplayText;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetElementCellTags, params.ptr, cast(void*)0);
		CellFieldTags = *cast(ScriptArray!(ScriptName)*)&params[8];
		if (ColumnHeaderDisplayText !is null)
			*ColumnHeaderDisplayText = *cast(ScriptArray!(ScriptString)*)&params[20];
	}
	bool GetCellFieldType(ScriptName FieldName, ScriptName CellTag, ref UIRoot.EUIDataProviderFieldType FieldType)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptName*)&params[8] = CellTag;
		*cast(UIRoot.EUIDataProviderFieldType*)&params[16] = FieldType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCellFieldType, params.ptr, cast(void*)0);
		FieldType = *cast(UIRoot.EUIDataProviderFieldType*)&params[16];
		return *cast(bool*)&params[20];
	}
	bool GetCellFieldValue(ScriptName FieldName, ScriptName CellTag, int ListIndex, ref UIRoot.UIProviderFieldValue out_FieldValue, int* ArrayIndex = null)
	{
		ubyte params[116];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptName*)&params[8] = CellTag;
		*cast(int*)&params[16] = ListIndex;
		*cast(UIRoot.UIProviderFieldValue*)&params[20] = out_FieldValue;
		if (ArrayIndex !is null)
			*cast(int*)&params[108] = *ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCellFieldValue, params.ptr, cast(void*)0);
		out_FieldValue = *cast(UIRoot.UIProviderFieldValue*)&params[20];
		return *cast(bool*)&params[112];
	}
	void ClearProviderReferences()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearProviderReferences, cast(void*)0, cast(void*)0);
	}
	bool ReplaceProviderValue(ref ScriptArray!(UIDataProvider.UIDataProviderField) out_Fields, ScriptName TargetFieldTag, UIDataProvider ReplacementProvider)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptArray!(UIDataProvider.UIDataProviderField)*)params.ptr = out_Fields;
		*cast(ScriptName*)&params[12] = TargetFieldTag;
		*cast(UIDataProvider*)&params[20] = ReplacementProvider;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplaceProviderValue, params.ptr, cast(void*)0);
		out_Fields = *cast(ScriptArray!(UIDataProvider.UIDataProviderField)*)params.ptr;
		return *cast(bool*)&params[24];
	}
	bool ReplaceProviderCollection(ref ScriptArray!(UIDataProvider.UIDataProviderField) out_Fields, ScriptName TargetFieldTag, ref in ScriptArray!(UIDataProvider) ReplacementProviders)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptArray!(UIDataProvider.UIDataProviderField)*)params.ptr = out_Fields;
		*cast(ScriptName*)&params[12] = TargetFieldTag;
		*cast(ScriptArray!(UIDataProvider)*)&params[20] = cast(ScriptArray!(UIDataProvider))ReplacementProviders;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplaceProviderCollection, params.ptr, cast(void*)0);
		out_Fields = *cast(ScriptArray!(UIDataProvider.UIDataProviderField)*)params.ptr;
		return *cast(bool*)&params[32];
	}
}
