module UnrealScript.UDKBase.UDKUIDataStore_StringList;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataStore_StringBase;
import UnrealScript.UDKBase.UDKUIDataProvider_StringArray;

extern(C++) interface UDKUIDataStore_StringList : UIDataStore_StringBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKUIDataStore_StringList")); }
	private static __gshared UDKUIDataStore_StringList mDefaultProperties;
	@property final static UDKUIDataStore_StringList DefaultProperties() { mixin(MGDPC("UDKUIDataStore_StringList", "UDKUIDataStore_StringList UDKBase.Default__UDKUIDataStore_StringList")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRegistered;
			ScriptFunction mGetFieldIndex;
			ScriptFunction mAddStr;
			ScriptFunction mInsertStr;
			ScriptFunction mRemoveStr;
			ScriptFunction mRemoveStrByIndex;
			ScriptFunction mEmpty;
			ScriptFunction mFindStr;
			ScriptFunction mGetStr;
			ScriptFunction mGetList;
			ScriptFunction mGetCurrentValue;
			ScriptFunction mGetCurrentValueIndex;
			ScriptFunction mSetCurrentValueIndex;
			ScriptFunction mNum;
		}
		public @property static final
		{
			ScriptFunction Registered() { mixin(MGF("mRegistered", "Function UDKBase.UDKUIDataStore_StringList.Registered")); }
			ScriptFunction GetFieldIndex() { mixin(MGF("mGetFieldIndex", "Function UDKBase.UDKUIDataStore_StringList.GetFieldIndex")); }
			ScriptFunction AddStr() { mixin(MGF("mAddStr", "Function UDKBase.UDKUIDataStore_StringList.AddStr")); }
			ScriptFunction InsertStr() { mixin(MGF("mInsertStr", "Function UDKBase.UDKUIDataStore_StringList.InsertStr")); }
			ScriptFunction RemoveStr() { mixin(MGF("mRemoveStr", "Function UDKBase.UDKUIDataStore_StringList.RemoveStr")); }
			ScriptFunction RemoveStrByIndex() { mixin(MGF("mRemoveStrByIndex", "Function UDKBase.UDKUIDataStore_StringList.RemoveStrByIndex")); }
			ScriptFunction Empty() { mixin(MGF("mEmpty", "Function UDKBase.UDKUIDataStore_StringList.Empty")); }
			ScriptFunction FindStr() { mixin(MGF("mFindStr", "Function UDKBase.UDKUIDataStore_StringList.FindStr")); }
			ScriptFunction GetStr() { mixin(MGF("mGetStr", "Function UDKBase.UDKUIDataStore_StringList.GetStr")); }
			ScriptFunction GetList() { mixin(MGF("mGetList", "Function UDKBase.UDKUIDataStore_StringList.GetList")); }
			ScriptFunction GetCurrentValue() { mixin(MGF("mGetCurrentValue", "Function UDKBase.UDKUIDataStore_StringList.GetCurrentValue")); }
			ScriptFunction GetCurrentValueIndex() { mixin(MGF("mGetCurrentValueIndex", "Function UDKBase.UDKUIDataStore_StringList.GetCurrentValueIndex")); }
			ScriptFunction SetCurrentValueIndex() { mixin(MGF("mSetCurrentValueIndex", "Function UDKBase.UDKUIDataStore_StringList.SetCurrentValueIndex")); }
			ScriptFunction Num() { mixin(MGF("mNum", "Function UDKBase.UDKUIDataStore_StringList.Num")); }
		}
	}
	static struct Constants
	{
		enum INVALIDFIELD = -1;
	}
	struct EStringListData
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKUIDataStore_StringList.EStringListData")); }
		@property final auto ref
		{
			ScriptArray!(ScriptString) Strings() { mixin(MGPS("ScriptArray!(ScriptString)", 36)); }
			UDKUIDataProvider_StringArray DataProvider() { mixin(MGPS("UDKUIDataProvider_StringArray", 48)); }
			int DefaultValueIndex() { mixin(MGPS("int", 32)); }
			ScriptString CurrentValue() { mixin(MGPS("ScriptString", 20)); }
			ScriptString ColumnHeaderText() { mixin(MGPS("ScriptString", 8)); }
			ScriptName Tag() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UDKUIDataStore_StringList.EStringListData) StringData() { mixin(MGPC("ScriptArray!(UDKUIDataStore_StringList.EStringListData)", 128)); }
		Pointer VfTable_IUIListElementCellProvider() { mixin(MGPC("Pointer", 124)); }
		Pointer VfTable_IUIListElementProvider() { mixin(MGPC("Pointer", 120)); }
	}
final:
	void Registered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.Registered, params.ptr, cast(void*)0);
	}
	int GetFieldIndex(ScriptName FieldName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFieldIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void AddStr(ScriptName FieldName, ScriptString NewString, bool* bBatchOp = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = NewString;
		if (bBatchOp !is null)
			*cast(bool*)&params[20] = *bBatchOp;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddStr, params.ptr, cast(void*)0);
	}
	void InsertStr(ScriptName FieldName, ScriptString NewString, int InsertIndex, bool* bBatchOp = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = NewString;
		*cast(int*)&params[20] = InsertIndex;
		if (bBatchOp !is null)
			*cast(bool*)&params[24] = *bBatchOp;
		(cast(ScriptObject)this).ProcessEvent(Functions.InsertStr, params.ptr, cast(void*)0);
	}
	void RemoveStr(ScriptName FieldName, ScriptString StringToRemove, bool* bBatchOp = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = StringToRemove;
		if (bBatchOp !is null)
			*cast(bool*)&params[20] = *bBatchOp;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveStr, params.ptr, cast(void*)0);
	}
	void RemoveStrByIndex(ScriptName FieldName, int Index, int* Count = null, bool* bBatchOp = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = Index;
		if (Count !is null)
			*cast(int*)&params[12] = *Count;
		if (bBatchOp !is null)
			*cast(bool*)&params[16] = *bBatchOp;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveStrByIndex, params.ptr, cast(void*)0);
	}
	void Empty(ScriptName FieldName, bool* bBatchOp = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		if (bBatchOp !is null)
			*cast(bool*)&params[8] = *bBatchOp;
		(cast(ScriptObject)this).ProcessEvent(Functions.Empty, params.ptr, cast(void*)0);
	}
	int FindStr(ScriptName FieldName, ScriptString SearchString)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = SearchString;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindStr, params.ptr, cast(void*)0);
		return *cast(int*)&params[20];
	}
	ScriptString GetStr(ScriptName FieldName, int StrIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = StrIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStr, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	ScriptArray!(ScriptString) GetList(ScriptName FieldName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetList, params.ptr, cast(void*)0);
		return *cast(ScriptArray!(ScriptString)*)&params[8];
	}
	bool GetCurrentValue(ScriptName FieldName, ref ScriptString out_Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = out_Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentValue, params.ptr, cast(void*)0);
		out_Value = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	int GetCurrentValueIndex(ScriptName FieldName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentValueIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int SetCurrentValueIndex(ScriptName FieldName, int NewValueIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = NewValueIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentValueIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	int Num(ScriptName FieldName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		(cast(ScriptObject)this).ProcessEvent(Functions.Num, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
}
