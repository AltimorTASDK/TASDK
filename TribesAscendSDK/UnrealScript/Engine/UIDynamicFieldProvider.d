module UnrealScript.Engine.UIDynamicFieldProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDynamicFieldProvider : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDynamicFieldProvider")); }
	private static __gshared UIDynamicFieldProvider mDefaultProperties;
	@property final static UIDynamicFieldProvider DefaultProperties() { mixin(MGDPC("UIDynamicFieldProvider", "UIDynamicFieldProvider Engine.Default__UIDynamicFieldProvider")); }
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
			ScriptFunction InitializeRuntimeFields() { mixin(MGF("mInitializeRuntimeFields", "Function Engine.UIDynamicFieldProvider.InitializeRuntimeFields")); }
			ScriptFunction AddField() { mixin(MGF("mAddField", "Function Engine.UIDynamicFieldProvider.AddField")); }
			ScriptFunction RemoveField() { mixin(MGF("mRemoveField", "Function Engine.UIDynamicFieldProvider.RemoveField")); }
			ScriptFunction FindFieldIndex() { mixin(MGF("mFindFieldIndex", "Function Engine.UIDynamicFieldProvider.FindFieldIndex")); }
			ScriptFunction ClearFields() { mixin(MGF("mClearFields", "Function Engine.UIDynamicFieldProvider.ClearFields")); }
			ScriptFunction GetField() { mixin(MGF("mGetField", "Function Engine.UIDynamicFieldProvider.GetField")); }
			ScriptFunction SetField() { mixin(MGF("mSetField", "Function Engine.UIDynamicFieldProvider.SetField")); }
			ScriptFunction SavePersistentProviderData() { mixin(MGF("mSavePersistentProviderData", "Function Engine.UIDynamicFieldProvider.SavePersistentProviderData")); }
			ScriptFunction GetCollectionValueSchema() { mixin(MGF("mGetCollectionValueSchema", "Function Engine.UIDynamicFieldProvider.GetCollectionValueSchema")); }
			ScriptFunction GetCollectionValueArray() { mixin(MGF("mGetCollectionValueArray", "Function Engine.UIDynamicFieldProvider.GetCollectionValueArray")); }
			ScriptFunction SetCollectionValueArray() { mixin(MGF("mSetCollectionValueArray", "Function Engine.UIDynamicFieldProvider.SetCollectionValueArray")); }
			ScriptFunction InsertCollectionValue() { mixin(MGF("mInsertCollectionValue", "Function Engine.UIDynamicFieldProvider.InsertCollectionValue")); }
			ScriptFunction RemoveCollectionValue() { mixin(MGF("mRemoveCollectionValue", "Function Engine.UIDynamicFieldProvider.RemoveCollectionValue")); }
			ScriptFunction RemoveCollectionValueByIndex() { mixin(MGF("mRemoveCollectionValueByIndex", "Function Engine.UIDynamicFieldProvider.RemoveCollectionValueByIndex")); }
			ScriptFunction ReplaceCollectionValue() { mixin(MGF("mReplaceCollectionValue", "Function Engine.UIDynamicFieldProvider.ReplaceCollectionValue")); }
			ScriptFunction ReplaceCollectionValueByIndex() { mixin(MGF("mReplaceCollectionValueByIndex", "Function Engine.UIDynamicFieldProvider.ReplaceCollectionValueByIndex")); }
			ScriptFunction ClearCollectionValueArray() { mixin(MGF("mClearCollectionValueArray", "Function Engine.UIDynamicFieldProvider.ClearCollectionValueArray")); }
			ScriptFunction GetCollectionValue() { mixin(MGF("mGetCollectionValue", "Function Engine.UIDynamicFieldProvider.GetCollectionValue")); }
			ScriptFunction FindCollectionValueIndex() { mixin(MGF("mFindCollectionValueIndex", "Function Engine.UIDynamicFieldProvider.FindCollectionValueIndex")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UIRoot.UIProviderScriptFieldValue) PersistentDataFields() { mixin(MGPC("ScriptArray!(UIRoot.UIProviderScriptFieldValue)", 88)); }
		ScriptArray!(UIRoot.UIProviderScriptFieldValue) RuntimeDataFields() { mixin(MGPC("ScriptArray!(UIRoot.UIProviderScriptFieldValue)", 100)); }
		UObject.Map_Mirror RuntimeCollectionData() { mixin(MGPC("UObject.Map_Mirror", 172)); }
		UObject.Map_Mirror PersistentCollectionData() { mixin(MGPC("UObject.Map_Mirror", 112)); }
	}
final:
	void InitializeRuntimeFields()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeRuntimeFields, cast(void*)0, cast(void*)0);
	}
	bool AddField(ScriptName FieldName, UIRoot.EUIDataProviderFieldType* FieldType = null, bool* bPersistent = null, int* out_InsertPosition = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		if (FieldType !is null)
			*cast(UIRoot.EUIDataProviderFieldType*)&params[8] = *FieldType;
		if (bPersistent !is null)
			*cast(bool*)&params[12] = *bPersistent;
		if (out_InsertPosition !is null)
			*cast(int*)&params[16] = *out_InsertPosition;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddField, params.ptr, cast(void*)0);
		if (out_InsertPosition !is null)
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
	int FindFieldIndex(ScriptName FieldName, bool* bSearchPersistentFields = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		if (bSearchPersistentFields !is null)
			*cast(bool*)&params[8] = *bSearchPersistentFields;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindFieldIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	bool ClearFields(bool* bReinitializeRuntimeFields = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bReinitializeRuntimeFields !is null)
			*cast(bool*)params.ptr = *bReinitializeRuntimeFields;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearFields, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool GetField(ScriptName FieldName, ref UIRoot.UIProviderScriptFieldValue out_Field)
	{
		ubyte params[96];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[8] = out_Field;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetField, params.ptr, cast(void*)0);
		out_Field = *cast(UIRoot.UIProviderScriptFieldValue*)&params[8];
		return *cast(bool*)&params[92];
	}
	bool SetField(ScriptName FieldName, ref in UIRoot.UIProviderScriptFieldValue FieldValue, bool* bChangeExistingOnly = null)
	{
		ubyte params[100];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[8] = cast(UIRoot.UIProviderScriptFieldValue)FieldValue;
		if (bChangeExistingOnly !is null)
			*cast(bool*)&params[92] = *bChangeExistingOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetField, params.ptr, cast(void*)0);
		return *cast(bool*)&params[96];
	}
	void SavePersistentProviderData()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SavePersistentProviderData, cast(void*)0, cast(void*)0);
	}
	bool GetCollectionValueSchema(ScriptName FieldName, ref ScriptArray!(ScriptName) out_CellTagArray, bool* bPersistent = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptArray!(ScriptName)*)&params[8] = out_CellTagArray;
		if (bPersistent !is null)
			*cast(bool*)&params[20] = *bPersistent;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollectionValueSchema, params.ptr, cast(void*)0);
		out_CellTagArray = *cast(ScriptArray!(ScriptName)*)&params[8];
		return *cast(bool*)&params[24];
	}
	bool GetCollectionValueArray(ScriptName FieldName, ref ScriptArray!(ScriptString) out_DataValueArray, bool* bPersistent = null, ScriptName* CellTag = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptArray!(ScriptString)*)&params[8] = out_DataValueArray;
		if (bPersistent !is null)
			*cast(bool*)&params[20] = *bPersistent;
		if (CellTag !is null)
			*cast(ScriptName*)&params[24] = *CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollectionValueArray, params.ptr, cast(void*)0);
		out_DataValueArray = *cast(ScriptArray!(ScriptString)*)&params[8];
		return *cast(bool*)&params[32];
	}
	bool SetCollectionValueArray(ScriptName FieldName, ref in ScriptArray!(ScriptString) CollectionValues, bool* bClearExisting = null, int* InsertIndex = null, bool* bPersistent = null, ScriptName* CellTag = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptArray!(ScriptString)*)&params[8] = cast(ScriptArray!(ScriptString))CollectionValues;
		if (bClearExisting !is null)
			*cast(bool*)&params[20] = *bClearExisting;
		if (InsertIndex !is null)
			*cast(int*)&params[24] = *InsertIndex;
		if (bPersistent !is null)
			*cast(bool*)&params[28] = *bPersistent;
		if (CellTag !is null)
			*cast(ScriptName*)&params[32] = *CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCollectionValueArray, params.ptr, cast(void*)0);
		return *cast(bool*)&params[40];
	}
	bool InsertCollectionValue(ScriptName FieldName, ref in ScriptString NewValue, int* InsertIndex = null, bool* bPersistent = null, bool* bAllowDuplicateValues = null, ScriptName* CellTag = null)
	{
		ubyte params[44];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = cast(ScriptString)NewValue;
		if (InsertIndex !is null)
			*cast(int*)&params[20] = *InsertIndex;
		if (bPersistent !is null)
			*cast(bool*)&params[24] = *bPersistent;
		if (bAllowDuplicateValues !is null)
			*cast(bool*)&params[28] = *bAllowDuplicateValues;
		if (CellTag !is null)
			*cast(ScriptName*)&params[32] = *CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.InsertCollectionValue, params.ptr, cast(void*)0);
		return *cast(bool*)&params[40];
	}
	bool RemoveCollectionValue(ScriptName FieldName, ref in ScriptString ValueToRemove, bool* bPersistent = null, ScriptName* CellTag = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = cast(ScriptString)ValueToRemove;
		if (bPersistent !is null)
			*cast(bool*)&params[20] = *bPersistent;
		if (CellTag !is null)
			*cast(ScriptName*)&params[24] = *CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveCollectionValue, params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	bool RemoveCollectionValueByIndex(ScriptName FieldName, int ValueIndex, bool* bPersistent = null, ScriptName* CellTag = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = ValueIndex;
		if (bPersistent !is null)
			*cast(bool*)&params[12] = *bPersistent;
		if (CellTag !is null)
			*cast(ScriptName*)&params[16] = *CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveCollectionValueByIndex, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool ReplaceCollectionValue(ScriptName FieldName, ref in ScriptString CurrentValue, ref in ScriptString NewValue, bool* bPersistent = null, ScriptName* CellTag = null)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = cast(ScriptString)CurrentValue;
		*cast(ScriptString*)&params[20] = cast(ScriptString)NewValue;
		if (bPersistent !is null)
			*cast(bool*)&params[32] = *bPersistent;
		if (CellTag !is null)
			*cast(ScriptName*)&params[36] = *CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplaceCollectionValue, params.ptr, cast(void*)0);
		return *cast(bool*)&params[44];
	}
	bool ReplaceCollectionValueByIndex(ScriptName FieldName, int ValueIndex, ref in ScriptString NewValue, bool* bPersistent = null, ScriptName* CellTag = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = ValueIndex;
		*cast(ScriptString*)&params[12] = cast(ScriptString)NewValue;
		if (bPersistent !is null)
			*cast(bool*)&params[24] = *bPersistent;
		if (CellTag !is null)
			*cast(ScriptName*)&params[28] = *CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplaceCollectionValueByIndex, params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	bool ClearCollectionValueArray(ScriptName FieldName, bool* bPersistent = null, ScriptName* CellTag = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		if (bPersistent !is null)
			*cast(bool*)&params[8] = *bPersistent;
		if (CellTag !is null)
			*cast(ScriptName*)&params[12] = *CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearCollectionValueArray, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	bool GetCollectionValue(ScriptName FieldName, int ValueIndex, ref ScriptString out_Value, bool* bPersistent = null, ScriptName* CellTag = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = ValueIndex;
		*cast(ScriptString*)&params[12] = out_Value;
		if (bPersistent !is null)
			*cast(bool*)&params[24] = *bPersistent;
		if (CellTag !is null)
			*cast(ScriptName*)&params[28] = *CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCollectionValue, params.ptr, cast(void*)0);
		out_Value = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[36];
	}
	int FindCollectionValueIndex(ScriptName FieldName, ref in ScriptString ValueToFind, bool* bPersistent = null, ScriptName* CellTag = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = cast(ScriptString)ValueToFind;
		if (bPersistent !is null)
			*cast(bool*)&params[20] = *bPersistent;
		if (CellTag !is null)
			*cast(ScriptName*)&params[24] = *CellTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindCollectionValueIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[32];
	}
}
