module UnrealScript.Engine.UIDynamicFieldProvider;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDynamicFieldProvider : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDynamicFieldProvider")); }
	private static __gshared UIDynamicFieldProvider mDefaultProperties;
	@property final static UIDynamicFieldProvider DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UIDynamicFieldProvider)("UIDynamicFieldProvider Engine.Default__UIDynamicFieldProvider")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitializeRuntimeFields;
			ScriptFunction mAddField;
			ScriptFunction mRemoveField;
			ScriptFunction mFindFieldIndex;
			ScriptFunction mClearFields;
			ScriptFunction mGetField;
			ScriptFunction mSetField;
			ScriptFunction mSavePersistentProviderData;
			ScriptFunction mGetCollectionValueSchema;
			ScriptFunction mGetCollectionValueArray;
			ScriptFunction mSetCollectionValueArray;
			ScriptFunction mInsertCollectionValue;
			ScriptFunction mRemoveCollectionValue;
			ScriptFunction mRemoveCollectionValueByIndex;
			ScriptFunction mReplaceCollectionValue;
			ScriptFunction mReplaceCollectionValueByIndex;
			ScriptFunction mClearCollectionValueArray;
			ScriptFunction mGetCollectionValue;
			ScriptFunction mFindCollectionValueIndex;
		}
		public @property static final
		{
			ScriptFunction InitializeRuntimeFields() { return mInitializeRuntimeFields ? mInitializeRuntimeFields : (mInitializeRuntimeFields = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.InitializeRuntimeFields")); }
			ScriptFunction AddField() { return mAddField ? mAddField : (mAddField = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.AddField")); }
			ScriptFunction RemoveField() { return mRemoveField ? mRemoveField : (mRemoveField = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.RemoveField")); }
			ScriptFunction FindFieldIndex() { return mFindFieldIndex ? mFindFieldIndex : (mFindFieldIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.FindFieldIndex")); }
			ScriptFunction ClearFields() { return mClearFields ? mClearFields : (mClearFields = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.ClearFields")); }
			ScriptFunction GetField() { return mGetField ? mGetField : (mGetField = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.GetField")); }
			ScriptFunction SetField() { return mSetField ? mSetField : (mSetField = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.SetField")); }
			ScriptFunction SavePersistentProviderData() { return mSavePersistentProviderData ? mSavePersistentProviderData : (mSavePersistentProviderData = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.SavePersistentProviderData")); }
			ScriptFunction GetCollectionValueSchema() { return mGetCollectionValueSchema ? mGetCollectionValueSchema : (mGetCollectionValueSchema = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.GetCollectionValueSchema")); }
			ScriptFunction GetCollectionValueArray() { return mGetCollectionValueArray ? mGetCollectionValueArray : (mGetCollectionValueArray = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.GetCollectionValueArray")); }
			ScriptFunction SetCollectionValueArray() { return mSetCollectionValueArray ? mSetCollectionValueArray : (mSetCollectionValueArray = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.SetCollectionValueArray")); }
			ScriptFunction InsertCollectionValue() { return mInsertCollectionValue ? mInsertCollectionValue : (mInsertCollectionValue = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.InsertCollectionValue")); }
			ScriptFunction RemoveCollectionValue() { return mRemoveCollectionValue ? mRemoveCollectionValue : (mRemoveCollectionValue = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.RemoveCollectionValue")); }
			ScriptFunction RemoveCollectionValueByIndex() { return mRemoveCollectionValueByIndex ? mRemoveCollectionValueByIndex : (mRemoveCollectionValueByIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.RemoveCollectionValueByIndex")); }
			ScriptFunction ReplaceCollectionValue() { return mReplaceCollectionValue ? mReplaceCollectionValue : (mReplaceCollectionValue = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.ReplaceCollectionValue")); }
			ScriptFunction ReplaceCollectionValueByIndex() { return mReplaceCollectionValueByIndex ? mReplaceCollectionValueByIndex : (mReplaceCollectionValueByIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.ReplaceCollectionValueByIndex")); }
			ScriptFunction ClearCollectionValueArray() { return mClearCollectionValueArray ? mClearCollectionValueArray : (mClearCollectionValueArray = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.ClearCollectionValueArray")); }
			ScriptFunction GetCollectionValue() { return mGetCollectionValue ? mGetCollectionValue : (mGetCollectionValue = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.GetCollectionValue")); }
			ScriptFunction FindCollectionValueIndex() { return mFindCollectionValueIndex ? mFindCollectionValueIndex : (mFindCollectionValueIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDynamicFieldProvider.FindCollectionValueIndex")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UIRoot.UIProviderScriptFieldValue) PersistentDataFields() { return *cast(ScriptArray!(UIRoot.UIProviderScriptFieldValue)*)(cast(size_t)cast(void*)this + 88); }
		ScriptArray!(UIRoot.UIProviderScriptFieldValue) RuntimeDataFields() { return *cast(ScriptArray!(UIRoot.UIProviderScriptFieldValue)*)(cast(size_t)cast(void*)this + 100); }
		UObject.Map_Mirror RuntimeCollectionData() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 172); }
		UObject.Map_Mirror PersistentCollectionData() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 112); }
	}
final:
	void InitializeRuntimeFields()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeRuntimeFields, cast(void*)0, cast(void*)0);
	}
	bool AddField(ScriptName FieldName, UIRoot.EUIDataProviderFieldType FieldType, bool bPersistent, int* out_InsertPosition)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(UIRoot.EUIDataProviderFieldType*)&params[8] = FieldType;
		*cast(bool*)&params[12] = bPersistent;
		*cast(int*)&params[16] = *out_InsertPosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddField, params.ptr, cast(void*)0);
		*out_InsertPosition = *cast(int*)&params[16];
		return *cast(bool*)&params[20];
	}
	bool RemoveField(ScriptName FieldName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveField, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	int FindFieldIndex(ScriptName FieldName, bool bSearchPersistentFields)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(bool*)&params[8] = bSearchPersistentFields;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindFieldIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	bool ClearFields(bool bReinitializeRuntimeFields)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bReinitializeRuntimeFields;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFields, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool GetField(ScriptName FieldName, UIRoot.UIProviderScriptFieldValue* out_Field)
	{
		ubyte params[96];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[8] = *out_Field;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetField, params.ptr, cast(void*)0);
		*out_Field = *cast(UIRoot.UIProviderScriptFieldValue*)&params[8];
		return *cast(bool*)&params[92];
	}
	bool SetField(ScriptName FieldName, UIRoot.UIProviderScriptFieldValue* FieldValue, bool bChangeExistingOnly)
	{
		ubyte params[100];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[8] = *FieldValue;
		*cast(bool*)&params[92] = bChangeExistingOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetField, params.ptr, cast(void*)0);
		*FieldValue = *cast(UIRoot.UIProviderScriptFieldValue*)&params[8];
		return *cast(bool*)&params[96];
	}
	void SavePersistentProviderData()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SavePersistentProviderData, cast(void*)0, cast(void*)0);
	}
	bool GetCollectionValueSchema(ScriptName FieldName, ScriptArray!(ScriptName)* out_CellTagArray, bool bPersistent)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptArray!(ScriptName)*)&params[8] = *out_CellTagArray;
		*cast(bool*)&params[20] = bPersistent;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollectionValueSchema, params.ptr, cast(void*)0);
		*out_CellTagArray = *cast(ScriptArray!(ScriptName)*)&params[8];
		return *cast(bool*)&params[24];
	}
	bool GetCollectionValueArray(ScriptName FieldName, ScriptArray!(ScriptString)* out_DataValueArray, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptArray!(ScriptString)*)&params[8] = *out_DataValueArray;
		*cast(bool*)&params[20] = bPersistent;
		*cast(ScriptName*)&params[24] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollectionValueArray, params.ptr, cast(void*)0);
		*out_DataValueArray = *cast(ScriptArray!(ScriptString)*)&params[8];
		return *cast(bool*)&params[32];
	}
	bool SetCollectionValueArray(ScriptName FieldName, ScriptArray!(ScriptString)* CollectionValues, bool bClearExisting, int InsertIndex, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[44];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptArray!(ScriptString)*)&params[8] = *CollectionValues;
		*cast(bool*)&params[20] = bClearExisting;
		*cast(int*)&params[24] = InsertIndex;
		*cast(bool*)&params[28] = bPersistent;
		*cast(ScriptName*)&params[32] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCollectionValueArray, params.ptr, cast(void*)0);
		*CollectionValues = *cast(ScriptArray!(ScriptString)*)&params[8];
		return *cast(bool*)&params[40];
	}
	bool InsertCollectionValue(ScriptName FieldName, ScriptString* NewValue, int InsertIndex, bool bPersistent, bool bAllowDuplicateValues, ScriptName CellTag)
	{
		ubyte params[44];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = *NewValue;
		*cast(int*)&params[20] = InsertIndex;
		*cast(bool*)&params[24] = bPersistent;
		*cast(bool*)&params[28] = bAllowDuplicateValues;
		*cast(ScriptName*)&params[32] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.InsertCollectionValue, params.ptr, cast(void*)0);
		*NewValue = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[40];
	}
	bool RemoveCollectionValue(ScriptName FieldName, ScriptString* ValueToRemove, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = *ValueToRemove;
		*cast(bool*)&params[20] = bPersistent;
		*cast(ScriptName*)&params[24] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveCollectionValue, params.ptr, cast(void*)0);
		*ValueToRemove = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[32];
	}
	bool RemoveCollectionValueByIndex(ScriptName FieldName, int ValueIndex, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = ValueIndex;
		*cast(bool*)&params[12] = bPersistent;
		*cast(ScriptName*)&params[16] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveCollectionValueByIndex, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool ReplaceCollectionValue(ScriptName FieldName, ScriptString* CurrentValue, ScriptString* NewValue, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = *CurrentValue;
		*cast(ScriptString*)&params[20] = *NewValue;
		*cast(bool*)&params[32] = bPersistent;
		*cast(ScriptName*)&params[36] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplaceCollectionValue, params.ptr, cast(void*)0);
		*CurrentValue = *cast(ScriptString*)&params[8];
		*NewValue = *cast(ScriptString*)&params[20];
		return *cast(bool*)&params[44];
	}
	bool ReplaceCollectionValueByIndex(ScriptName FieldName, int ValueIndex, ScriptString* NewValue, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = ValueIndex;
		*cast(ScriptString*)&params[12] = *NewValue;
		*cast(bool*)&params[24] = bPersistent;
		*cast(ScriptName*)&params[28] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplaceCollectionValueByIndex, params.ptr, cast(void*)0);
		*NewValue = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[36];
	}
	bool ClearCollectionValueArray(ScriptName FieldName, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(bool*)&params[8] = bPersistent;
		*cast(ScriptName*)&params[12] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearCollectionValueArray, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	bool GetCollectionValue(ScriptName FieldName, int ValueIndex, ScriptString* out_Value, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = ValueIndex;
		*cast(ScriptString*)&params[12] = *out_Value;
		*cast(bool*)&params[24] = bPersistent;
		*cast(ScriptName*)&params[28] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollectionValue, params.ptr, cast(void*)0);
		*out_Value = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[36];
	}
	int FindCollectionValueIndex(ScriptName FieldName, ScriptString* ValueToFind, bool bPersistent, ScriptName CellTag)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = *ValueToFind;
		*cast(bool*)&params[20] = bPersistent;
		*cast(ScriptName*)&params[24] = CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindCollectionValueIndex, params.ptr, cast(void*)0);
		*ValueToFind = *cast(ScriptString*)&params[8];
		return *cast(int*)&params[32];
	}
}
