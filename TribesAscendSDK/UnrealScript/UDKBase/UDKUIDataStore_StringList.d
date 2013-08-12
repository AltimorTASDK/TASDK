module UnrealScript.UDKBase.UDKUIDataStore_StringList;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataStore_StringBase;
import UnrealScript.UDKBase.UDKUIDataProvider_StringArray;

extern(C++) interface UDKUIDataStore_StringList : UIDataStore_StringBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKUIDataStore_StringList")); }
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
			ScriptFunction Registered() { return mRegistered ? mRegistered : (mRegistered = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringList.Registered")); }
			ScriptFunction GetFieldIndex() { return mGetFieldIndex ? mGetFieldIndex : (mGetFieldIndex = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringList.GetFieldIndex")); }
			ScriptFunction AddStr() { return mAddStr ? mAddStr : (mAddStr = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringList.AddStr")); }
			ScriptFunction InsertStr() { return mInsertStr ? mInsertStr : (mInsertStr = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringList.InsertStr")); }
			ScriptFunction RemoveStr() { return mRemoveStr ? mRemoveStr : (mRemoveStr = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringList.RemoveStr")); }
			ScriptFunction RemoveStrByIndex() { return mRemoveStrByIndex ? mRemoveStrByIndex : (mRemoveStrByIndex = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringList.RemoveStrByIndex")); }
			ScriptFunction Empty() { return mEmpty ? mEmpty : (mEmpty = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringList.Empty")); }
			ScriptFunction FindStr() { return mFindStr ? mFindStr : (mFindStr = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringList.FindStr")); }
			ScriptFunction GetStr() { return mGetStr ? mGetStr : (mGetStr = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringList.GetStr")); }
			ScriptFunction GetList() { return mGetList ? mGetList : (mGetList = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringList.GetList")); }
			ScriptFunction GetCurrentValue() { return mGetCurrentValue ? mGetCurrentValue : (mGetCurrentValue = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringList.GetCurrentValue")); }
			ScriptFunction GetCurrentValueIndex() { return mGetCurrentValueIndex ? mGetCurrentValueIndex : (mGetCurrentValueIndex = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringList.GetCurrentValueIndex")); }
			ScriptFunction SetCurrentValueIndex() { return mSetCurrentValueIndex ? mSetCurrentValueIndex : (mSetCurrentValueIndex = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringList.SetCurrentValueIndex")); }
			ScriptFunction Num() { return mNum ? mNum : (mNum = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKUIDataStore_StringList.Num")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKUIDataStore_StringList.EStringListData")); }
		@property final auto ref
		{
			ScriptArray!(ScriptString) Strings() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 36); }
			UDKUIDataProvider_StringArray DataProvider() { return *cast(UDKUIDataProvider_StringArray*)(cast(size_t)&this + 48); }
			int DefaultValueIndex() { return *cast(int*)(cast(size_t)&this + 32); }
			ScriptString CurrentValue() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
			ScriptString ColumnHeaderText() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
			ScriptName Tag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UDKUIDataStore_StringList.EStringListData) StringData() { return *cast(ScriptArray!(UDKUIDataStore_StringList.EStringListData)*)(cast(size_t)cast(void*)this + 128); }
		UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 124); }
		UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 120); }
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
	void AddStr(ScriptName FieldName, ScriptString NewString, bool bBatchOp)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = NewString;
		*cast(bool*)&params[20] = bBatchOp;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddStr, params.ptr, cast(void*)0);
	}
	void InsertStr(ScriptName FieldName, ScriptString NewString, int InsertIndex, bool bBatchOp)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = NewString;
		*cast(int*)&params[20] = InsertIndex;
		*cast(bool*)&params[24] = bBatchOp;
		(cast(ScriptObject)this).ProcessEvent(Functions.InsertStr, params.ptr, cast(void*)0);
	}
	void RemoveStr(ScriptName FieldName, ScriptString StringToRemove, bool bBatchOp)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = StringToRemove;
		*cast(bool*)&params[20] = bBatchOp;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveStr, params.ptr, cast(void*)0);
	}
	void RemoveStrByIndex(ScriptName FieldName, int Index, int Count, bool bBatchOp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = Index;
		*cast(int*)&params[12] = Count;
		*cast(bool*)&params[16] = bBatchOp;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveStrByIndex, params.ptr, cast(void*)0);
	}
	void Empty(ScriptName FieldName, bool bBatchOp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(bool*)&params[8] = bBatchOp;
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
	bool GetCurrentValue(ScriptName FieldName, ScriptString* out_Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = *out_Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentValue, params.ptr, cast(void*)0);
		*out_Value = *cast(ScriptString*)&params[8];
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
