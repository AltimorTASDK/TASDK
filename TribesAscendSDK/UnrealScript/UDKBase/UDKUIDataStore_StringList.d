module UnrealScript.UDKBase.UDKUIDataStore_StringList;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataStore_StringBase;
import UnrealScript.UDKBase.UDKUIDataProvider_StringArray;

extern(C++) interface UDKUIDataStore_StringList : UIDataStore_StringBase
{
	public static immutable auto INVALIDFIELD = -1;
	struct EStringListData
	{
		public @property final auto ref ScriptArray!(ScriptString) Strings() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 36); }
		private ubyte __Strings[12];
		public @property final auto ref UDKUIDataProvider_StringArray DataProvider() { return *cast(UDKUIDataProvider_StringArray*)(cast(size_t)&this + 48); }
		private ubyte __DataProvider[4];
		public @property final auto ref int DefaultValueIndex() { return *cast(int*)(cast(size_t)&this + 32); }
		private ubyte __DefaultValueIndex[4];
		public @property final auto ref ScriptString CurrentValue() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
		private ubyte __CurrentValue[12];
		public @property final auto ref ScriptString ColumnHeaderText() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __ColumnHeaderText[12];
		public @property final auto ref ScriptName Tag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __Tag[8];
	}
	public @property final auto ref ScriptArray!(UDKUIDataStore_StringList.EStringListData) StringData() { return *cast(ScriptArray!(UDKUIDataStore_StringList.EStringListData)*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref UObject.Pointer VfTable_IUIListElementProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 120); }
	final void Registered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35705], params.ptr, cast(void*)0);
	}
	final int GetFieldIndex(ScriptName FieldName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35708], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void AddStr(ScriptName FieldName, ScriptString NewString, bool bBatchOp)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = NewString;
		*cast(bool*)&params[20] = bBatchOp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35711], params.ptr, cast(void*)0);
	}
	final void InsertStr(ScriptName FieldName, ScriptString NewString, int InsertIndex, bool bBatchOp)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = NewString;
		*cast(int*)&params[20] = InsertIndex;
		*cast(bool*)&params[24] = bBatchOp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35715], params.ptr, cast(void*)0);
	}
	final void RemoveStr(ScriptName FieldName, ScriptString StringToRemove, bool bBatchOp)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = StringToRemove;
		*cast(bool*)&params[20] = bBatchOp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35720], params.ptr, cast(void*)0);
	}
	final void RemoveStrByIndex(ScriptName FieldName, int Index, int Count, bool bBatchOp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = Index;
		*cast(int*)&params[12] = Count;
		*cast(bool*)&params[16] = bBatchOp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35724], params.ptr, cast(void*)0);
	}
	final void Empty(ScriptName FieldName, bool bBatchOp)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(bool*)&params[8] = bBatchOp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35729], params.ptr, cast(void*)0);
	}
	final int FindStr(ScriptName FieldName, ScriptString SearchString)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = SearchString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35732], params.ptr, cast(void*)0);
		return *cast(int*)&params[20];
	}
	final ScriptString GetStr(ScriptName FieldName, int StrIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = StrIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35736], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final ScriptArray!(ScriptString) GetList(ScriptName FieldName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35740], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(ScriptString)*)&params[8];
	}
	final bool GetCurrentValue(ScriptName FieldName, ScriptString* out_Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(ScriptString*)&params[8] = *out_Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35744], params.ptr, cast(void*)0);
		*out_Value = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	final int GetCurrentValueIndex(ScriptName FieldName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35750], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int SetCurrentValueIndex(ScriptName FieldName, int NewValueIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		*cast(int*)&params[8] = NewValueIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35755], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	final int Num(ScriptName FieldName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35761], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
}
