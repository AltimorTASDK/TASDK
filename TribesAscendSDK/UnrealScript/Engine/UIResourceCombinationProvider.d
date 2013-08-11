module UnrealScript.Engine.UIResourceCombinationProvider;

import ScriptClasses;
import UnrealScript.Engine.UIDataProvider_OnlineProfileSettings;
import UnrealScript.Engine.UIResourceDataProvider;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIResourceCombinationProvider : UIDataProvider
{
public extern(D):
	@property final auto ref
	{
		UIDataProvider_OnlineProfileSettings ProfileProvider() { return *cast(UIDataProvider_OnlineProfileSettings*)(cast(size_t)cast(void*)this + 100); }
		UIResourceDataProvider StaticDataProvider() { return *cast(UIResourceDataProvider*)(cast(size_t)cast(void*)this + 96); }
		UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 92); }
		UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 88); }
	}
final:
	void InitializeProvider(bool bIsEditor, UIResourceDataProvider InStaticResourceProvider, UIDataProvider_OnlineProfileSettings InProfileProvider)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bIsEditor;
		*cast(UIResourceDataProvider*)&params[4] = InStaticResourceProvider;
		*cast(UIDataProvider_OnlineProfileSettings*)&params[8] = InProfileProvider;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29150], params.ptr, cast(void*)0);
	}
	ScriptArray!(ScriptName) GetElementProviderTags()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29154], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(ScriptName)*)params.ptr;
	}
	int GetElementCount(ScriptName FieldName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29159], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	bool GetListElements(ScriptName FieldName, ScriptArray!(int)* out_Elements)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptArray!(int)*)&params[8] = *out_Elements;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29163], params.ptr, cast(void*)0);
		*out_Elements = *cast(ScriptArray!(int)*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool IsElementEnabled(ScriptName FieldName, int CollectionIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = CollectionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29169], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool GetElementCellSchemaProvider(ScriptName FieldName, 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void** out_SchemaProvider)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)&params[8] = *out_SchemaProvider;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29174], params.ptr, cast(void*)0);
		*out_SchemaProvider = *cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)&params[8];
		return *cast(bool*)&params[16];
	}
	bool GetElementCellValueProvider(ScriptName FieldName, int ListIndex, 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void** out_ValueProvider)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = ListIndex;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)&params[12] = *out_ValueProvider;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29179], params.ptr, cast(void*)0);
		*out_ValueProvider = *cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)&params[12];
		return *cast(bool*)&params[20];
	}
	void GetElementCellTags(ScriptName FieldName, ScriptArray!(ScriptName)* CellFieldTags, ScriptArray!(ScriptString)* ColumnHeaderDisplayText)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptArray!(ScriptName)*)&params[8] = *CellFieldTags;
		*cast(ScriptArray!(ScriptString)*)&params[20] = *ColumnHeaderDisplayText;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29185], params.ptr, cast(void*)0);
		*CellFieldTags = *cast(ScriptArray!(ScriptName)*)&params[8];
		*ColumnHeaderDisplayText = *cast(ScriptArray!(ScriptString)*)&params[20];
	}
	bool GetCellFieldType(ScriptName FieldName, ScriptName CellTag, UIRoot.EUIDataProviderFieldType* FieldType)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptName*)&params[8] = CellTag;
		*cast(UIRoot.EUIDataProviderFieldType*)&params[16] = *FieldType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29191], params.ptr, cast(void*)0);
		*FieldType = *cast(UIRoot.EUIDataProviderFieldType*)&params[16];
		return *cast(bool*)&params[20];
	}
	bool GetCellFieldValue(ScriptName FieldName, ScriptName CellTag, int ListIndex, UIRoot.UIProviderFieldValue* out_FieldValue, int ArrayIndex)
	{
		ubyte params[116];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptName*)&params[8] = CellTag;
		*cast(int*)&params[16] = ListIndex;
		*cast(UIRoot.UIProviderFieldValue*)&params[20] = *out_FieldValue;
		*cast(int*)&params[108] = ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29197], params.ptr, cast(void*)0);
		*out_FieldValue = *cast(UIRoot.UIProviderFieldValue*)&params[20];
		return *cast(bool*)&params[112];
	}
	void ClearProviderReferences()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29205], cast(void*)0, cast(void*)0);
	}
	bool ReplaceProviderValue(ScriptArray!(UIDataProvider.UIDataProviderField)* out_Fields, ScriptName TargetFieldTag, UIDataProvider ReplacementProvider)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptArray!(UIDataProvider.UIDataProviderField)*)params.ptr = *out_Fields;
		*cast(ScriptName*)&params[12] = TargetFieldTag;
		*cast(UIDataProvider*)&params[20] = ReplacementProvider;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29206], params.ptr, cast(void*)0);
		*out_Fields = *cast(ScriptArray!(UIDataProvider.UIDataProviderField)*)params.ptr;
		return *cast(bool*)&params[24];
	}
	bool ReplaceProviderCollection(ScriptArray!(UIDataProvider.UIDataProviderField)* out_Fields, ScriptName TargetFieldTag, ScriptArray!(UIDataProvider)* ReplacementProviders)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptArray!(UIDataProvider.UIDataProviderField)*)params.ptr = *out_Fields;
		*cast(ScriptName*)&params[12] = TargetFieldTag;
		*cast(ScriptArray!(UIDataProvider)*)&params[20] = *ReplacementProviders;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29214], params.ptr, cast(void*)0);
		*out_Fields = *cast(ScriptArray!(UIDataProvider.UIDataProviderField)*)params.ptr;
		*ReplacementProviders = *cast(ScriptArray!(UIDataProvider)*)&params[20];
		return *cast(bool*)&params[32];
	}
}
