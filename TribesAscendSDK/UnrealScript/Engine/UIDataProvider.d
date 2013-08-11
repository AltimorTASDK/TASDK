module UnrealScript.Engine.UIDataProvider;

import ScriptClasses;
import UnrealScript.Engine.UIRoot;

extern(C++) interface UIDataProvider : UIRoot
{
public extern(D):
	enum EProviderAccessType : ubyte
	{
		ACCESS_ReadOnly = 0,
		ACCESS_PerField = 1,
		ACCESS_WriteAll = 2,
		ACCESS_MAX = 3,
	}
	struct UIDataProviderField
	{
		private ubyte __buffer__[24];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(UIDataProvider) FieldProviders() { return *cast(ScriptArray!(UIDataProvider)*)(cast(size_t)&this + 12); }
			UIRoot.EUIDataProviderFieldType FieldType() { return *cast(UIRoot.EUIDataProviderFieldType*)(cast(size_t)&this + 8); }
			ScriptName FieldTag() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ProviderChangedNotifies() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 64); }
		UIDataProvider.EProviderAccessType WriteAccessType() { return *cast(UIDataProvider.EProviderAccessType*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	void OnDataProviderPropertyChange(UIDataProvider SourceProvider, ScriptName PropTag)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UIDataProvider*)params.ptr = SourceProvider;
		*cast(ScriptName*)&params[4] = PropTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22531], params.ptr, cast(void*)0);
	}
	bool GetProviderFieldType(ScriptString DataTag, UIRoot.EUIDataProviderFieldType* out_ProviderFieldType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DataTag;
		*cast(UIRoot.EUIDataProviderFieldType*)&params[12] = *out_ProviderFieldType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22536], params.ptr, cast(void*)0);
		*out_ProviderFieldType = *cast(UIRoot.EUIDataProviderFieldType*)&params[12];
		return *cast(bool*)&params[16];
	}
	int ParseArrayDelimiter(ScriptString* DataTag)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *DataTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22540], params.ptr, cast(void*)0);
		*DataTag = *cast(ScriptString*)params.ptr;
		return *cast(int*)&params[12];
	}
	void GetSupportedScriptFields(ScriptArray!(UIDataProvider.UIDataProviderField)* out_Fields)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(UIDataProvider.UIDataProviderField)*)params.ptr = *out_Fields;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22543], params.ptr, cast(void*)0);
		*out_Fields = *cast(ScriptArray!(UIDataProvider.UIDataProviderField)*)params.ptr;
	}
	bool AllowPublishingToField(ScriptString FieldName, int ArrayIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(int*)&params[12] = ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22546], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool GetFieldValue(ScriptString FieldName, UIRoot.UIProviderScriptFieldValue* FieldValue, int ArrayIndex)
	{
		ubyte params[104];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[12] = *FieldValue;
		*cast(int*)&params[96] = ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22550], params.ptr, cast(void*)0);
		*FieldValue = *cast(UIRoot.UIProviderScriptFieldValue*)&params[12];
		return *cast(bool*)&params[100];
	}
	bool SetFieldValue(ScriptString FieldName, UIRoot.UIProviderScriptFieldValue* FieldValue, int ArrayIndex)
	{
		ubyte params[104];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[12] = *FieldValue;
		*cast(int*)&params[96] = ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22555], params.ptr, cast(void*)0);
		*FieldValue = *cast(UIRoot.UIProviderScriptFieldValue*)&params[12];
		return *cast(bool*)&params[100];
	}
	ScriptString GenerateScriptMarkupString(ScriptName DataTag)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DataTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22560], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	ScriptString GenerateFillerData(ScriptString DataTag)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DataTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22563], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	bool IsProviderDisabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22566], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsCollectionDataType(UIRoot.EUIDataProviderFieldType FieldType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UIRoot.EUIDataProviderFieldType*)params.ptr = FieldType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22568], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void NotifyPropertyChanged(ScriptName PropTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22571], params.ptr, cast(void*)0);
	}
	bool AddPropertyNotificationChangeRequest(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate, bool bAllowDuplicates)
	{
		ubyte params[20];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		*cast(bool*)&params[12] = bAllowDuplicates;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22577], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool RemovePropertyNotificationChangeRequest(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[16];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22583], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	int ParseTagArrayDelimiter(ScriptName* FieldName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = *FieldName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22588], params.ptr, cast(void*)0);
		*FieldName = *cast(ScriptName*)params.ptr;
		return *cast(int*)&params[8];
	}
}
