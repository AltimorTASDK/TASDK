module UnrealScript.Engine.UIDynamicFieldProvider;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDynamicFieldProvider : UIDataProvider
{
	public @property final auto ref ScriptArray!(UIRoot.UIProviderScriptFieldValue) PersistentDataFields() { return *cast(ScriptArray!(UIRoot.UIProviderScriptFieldValue)*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref ScriptArray!(UIRoot.UIProviderScriptFieldValue) RuntimeDataFields() { return *cast(ScriptArray!(UIRoot.UIProviderScriptFieldValue)*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref UObject.Map_Mirror RuntimeCollectionData() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref UObject.Map_Mirror PersistentCollectionData() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 112); }
	final void InitializeRuntimeFields()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28919], cast(void*)0, cast(void*)0);
	}
	final bool AddField(ScriptName FieldName, UIRoot.EUIDataProviderFieldType FieldType, bool bPersistent, int* out_InsertPosition)
	{
		ubyte params[21];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(UIRoot.EUIDataProviderFieldType*)&params[8] = FieldType;
		*cast(bool*)&params[12] = bPersistent;
		*cast(int*)&params[16] = *out_InsertPosition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28920], params.ptr, cast(void*)0);
		*out_InsertPosition = *cast(int*)&params[16];
		return *cast(bool*)&params[20];
	}
	final bool RemoveField(ScriptName FieldName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28926], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final int FindFieldIndex(ScriptName FieldName, bool bSearchPersistentFields)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(bool*)&params[8] = bSearchPersistentFields;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28929], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final bool ClearFields(bool bReinitializeRuntimeFields)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bReinitializeRuntimeFields;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28933], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool GetField(ScriptName FieldName, UIRoot.UIProviderScriptFieldValue* out_Field)
	{
		ubyte params[96];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[8] = *out_Field;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28936], params.ptr, cast(void*)0);
		*out_Field = *cast(UIRoot.UIProviderScriptFieldValue*)&params[8];
		return *cast(bool*)&params[92];
	}
	final bool SetField(ScriptName FieldName, UIRoot.UIProviderScriptFieldValue* FieldValue, bool bChangeExistingOnly)
	{
		ubyte params[100];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[8] = *FieldValue;
		*cast(bool*)&params[92] = bChangeExistingOnly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28940], params.ptr, cast(void*)0);
		*FieldValue = *cast(UIRoot.UIProviderScriptFieldValue*)&params[8];
		return *cast(bool*)&params[96];
	}
	final void SavePersistentProviderData()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28945], cast(void*)0, cast(void*)0);
	}
	final bool GetCollectionValueSchema(ScriptName FieldName, ScriptArray!(ScriptName)* out_CellTagArray, bool bPersistent)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptArray!(ScriptName)*)&params[8] = *out_CellTagArray;
		*cast(bool*)&params[20] = bPersistent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28946], params.ptr, cast(void*)0);
		*out_CellTagArray = *cast(ScriptArray!(ScriptName)*)&params[8];
		return *cast(bool*)&params[24];
	}
	final bool GetCollectionValueArray(ScriptName FieldName, ScriptArray!(ScriptString)* out_DataValueArray, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptArray!(ScriptString)*)&params[8] = *out_DataValueArray;
		*cast(bool*)&params[20] = bPersistent;
		*cast(ScriptName*)&params[24] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28952], params.ptr, cast(void*)0);
		*out_DataValueArray = *cast(ScriptArray!(ScriptString)*)&params[8];
		return *cast(bool*)&params[32];
	}
	final bool SetCollectionValueArray(ScriptName FieldName, ScriptArray!(ScriptString)* CollectionValues, bool bClearExisting, int InsertIndex, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[44];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptArray!(ScriptString)*)&params[8] = *CollectionValues;
		*cast(bool*)&params[20] = bClearExisting;
		*cast(int*)&params[24] = InsertIndex;
		*cast(bool*)&params[28] = bPersistent;
		*cast(ScriptName*)&params[32] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28959], params.ptr, cast(void*)0);
		*CollectionValues = *cast(ScriptArray!(ScriptString)*)&params[8];
		return *cast(bool*)&params[40];
	}
	final bool InsertCollectionValue(ScriptName FieldName, ScriptString* NewValue, int InsertIndex, bool bPersistent, bool bAllowDuplicateValues, ScriptName CellTag)
	{
		ubyte params[44];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = *NewValue;
		*cast(int*)&params[20] = InsertIndex;
		*cast(bool*)&params[24] = bPersistent;
		*cast(bool*)&params[28] = bAllowDuplicateValues;
		*cast(ScriptName*)&params[32] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28968], params.ptr, cast(void*)0);
		*NewValue = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[40];
	}
	final bool RemoveCollectionValue(ScriptName FieldName, ScriptString* ValueToRemove, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = *ValueToRemove;
		*cast(bool*)&params[20] = bPersistent;
		*cast(ScriptName*)&params[24] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28976], params.ptr, cast(void*)0);
		*ValueToRemove = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[32];
	}
	final bool RemoveCollectionValueByIndex(ScriptName FieldName, int ValueIndex, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = ValueIndex;
		*cast(bool*)&params[12] = bPersistent;
		*cast(ScriptName*)&params[16] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28982], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool ReplaceCollectionValue(ScriptName FieldName, ScriptString* CurrentValue, ScriptString* NewValue, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = *CurrentValue;
		*cast(ScriptString*)&params[20] = *NewValue;
		*cast(bool*)&params[32] = bPersistent;
		*cast(ScriptName*)&params[36] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28988], params.ptr, cast(void*)0);
		*CurrentValue = *cast(ScriptString*)&params[8];
		*NewValue = *cast(ScriptString*)&params[20];
		return *cast(bool*)&params[44];
	}
	final bool ReplaceCollectionValueByIndex(ScriptName FieldName, int ValueIndex, ScriptString* NewValue, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = ValueIndex;
		*cast(ScriptString*)&params[12] = *NewValue;
		*cast(bool*)&params[24] = bPersistent;
		*cast(ScriptName*)&params[28] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28995], params.ptr, cast(void*)0);
		*NewValue = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[36];
	}
	final bool ClearCollectionValueArray(ScriptName FieldName, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(bool*)&params[8] = bPersistent;
		*cast(ScriptName*)&params[12] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29002], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final bool GetCollectionValue(ScriptName FieldName, int ValueIndex, ScriptString* out_Value, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = ValueIndex;
		*cast(ScriptString*)&params[12] = *out_Value;
		*cast(bool*)&params[24] = bPersistent;
		*cast(ScriptName*)&params[28] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29007], params.ptr, cast(void*)0);
		*out_Value = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[36];
	}
	final int FindCollectionValueIndex(ScriptName FieldName, ScriptString* ValueToFind, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = *ValueToFind;
		*cast(bool*)&params[20] = bPersistent;
		*cast(ScriptName*)&params[24] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29014], params.ptr, cast(void*)0);
		*ValueToFind = *cast(ScriptString*)&params[8];
		return *cast(int*)&params[32];
	}
}
