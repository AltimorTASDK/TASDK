module UnrealScript.Engine.UIDataProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIRoot;

extern(C++) interface UIDataProvider : UIRoot
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIDataProvider")()); }
	private static __gshared UIDataProvider mDefaultProperties;
	@property final static UIDataProvider DefaultProperties() { mixin(MGDPC!(UIDataProvider, "UIDataProvider Engine.Default__UIDataProvider")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnDataProviderPropertyChange;
			ScriptFunction mGetProviderFieldType;
			ScriptFunction mParseArrayDelimiter;
			ScriptFunction mGetSupportedScriptFields;
			ScriptFunction mAllowPublishingToField;
			ScriptFunction mGetFieldValue;
			ScriptFunction mSetFieldValue;
			ScriptFunction mGenerateScriptMarkupString;
			ScriptFunction mGenerateFillerData;
			ScriptFunction mIsProviderDisabled;
			ScriptFunction mIsCollectionDataType;
			ScriptFunction mNotifyPropertyChanged;
			ScriptFunction mAddPropertyNotificationChangeRequest;
			ScriptFunction mRemovePropertyNotificationChangeRequest;
			ScriptFunction mParseTagArrayDelimiter;
		}
		public @property static final
		{
			ScriptFunction OnDataProviderPropertyChange() { mixin(MGF!("mOnDataProviderPropertyChange", "Function Engine.UIDataProvider.OnDataProviderPropertyChange")()); }
			ScriptFunction GetProviderFieldType() { mixin(MGF!("mGetProviderFieldType", "Function Engine.UIDataProvider.GetProviderFieldType")()); }
			ScriptFunction ParseArrayDelimiter() { mixin(MGF!("mParseArrayDelimiter", "Function Engine.UIDataProvider.ParseArrayDelimiter")()); }
			ScriptFunction GetSupportedScriptFields() { mixin(MGF!("mGetSupportedScriptFields", "Function Engine.UIDataProvider.GetSupportedScriptFields")()); }
			ScriptFunction AllowPublishingToField() { mixin(MGF!("mAllowPublishingToField", "Function Engine.UIDataProvider.AllowPublishingToField")()); }
			ScriptFunction GetFieldValue() { mixin(MGF!("mGetFieldValue", "Function Engine.UIDataProvider.GetFieldValue")()); }
			ScriptFunction SetFieldValue() { mixin(MGF!("mSetFieldValue", "Function Engine.UIDataProvider.SetFieldValue")()); }
			ScriptFunction GenerateScriptMarkupString() { mixin(MGF!("mGenerateScriptMarkupString", "Function Engine.UIDataProvider.GenerateScriptMarkupString")()); }
			ScriptFunction GenerateFillerData() { mixin(MGF!("mGenerateFillerData", "Function Engine.UIDataProvider.GenerateFillerData")()); }
			ScriptFunction IsProviderDisabled() { mixin(MGF!("mIsProviderDisabled", "Function Engine.UIDataProvider.IsProviderDisabled")()); }
			ScriptFunction IsCollectionDataType() { mixin(MGF!("mIsCollectionDataType", "Function Engine.UIDataProvider.IsCollectionDataType")()); }
			ScriptFunction NotifyPropertyChanged() { mixin(MGF!("mNotifyPropertyChanged", "Function Engine.UIDataProvider.NotifyPropertyChanged")()); }
			ScriptFunction AddPropertyNotificationChangeRequest() { mixin(MGF!("mAddPropertyNotificationChangeRequest", "Function Engine.UIDataProvider.AddPropertyNotificationChangeRequest")()); }
			ScriptFunction RemovePropertyNotificationChangeRequest() { mixin(MGF!("mRemovePropertyNotificationChangeRequest", "Function Engine.UIDataProvider.RemovePropertyNotificationChangeRequest")()); }
			ScriptFunction ParseTagArrayDelimiter() { mixin(MGF!("mParseTagArrayDelimiter", "Function Engine.UIDataProvider.ParseTagArrayDelimiter")()); }
		}
	}
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.UIDataProvider.UIDataProviderField")()); }
		@property final auto ref
		{
			ScriptArray!(UIDataProvider) FieldProviders() { mixin(MGPS!(ScriptArray!(UIDataProvider), 12)()); }
			UIRoot.EUIDataProviderFieldType FieldType() { mixin(MGPS!(UIRoot.EUIDataProviderFieldType, 8)()); }
			ScriptName FieldTag() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ProviderChangedNotifies() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 64)()); }
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnDataProviderPropertyChange__Delegate'!
		UIDataProvider.EProviderAccessType WriteAccessType() { mixin(MGPC!(UIDataProvider.EProviderAccessType, 60)()); }
	}
final:
	void OnDataProviderPropertyChange(UIDataProvider SourceProvider, ScriptName PropTag)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UIDataProvider*)params.ptr = SourceProvider;
		*cast(ScriptName*)&params[4] = PropTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDataProviderPropertyChange, params.ptr, cast(void*)0);
	}
	bool GetProviderFieldType(ScriptString DataTag, ref UIRoot.EUIDataProviderFieldType out_ProviderFieldType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DataTag;
		*cast(UIRoot.EUIDataProviderFieldType*)&params[12] = out_ProviderFieldType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProviderFieldType, params.ptr, cast(void*)0);
		*out_ProviderFieldType = *cast(UIRoot.EUIDataProviderFieldType*)&params[12];
		return *cast(bool*)&params[16];
	}
	int ParseArrayDelimiter(ref ScriptString DataTag)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DataTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.ParseArrayDelimiter, params.ptr, cast(void*)0);
		*DataTag = *cast(ScriptString*)params.ptr;
		return *cast(int*)&params[12];
	}
	void GetSupportedScriptFields(ref ScriptArray!(UIDataProvider.UIDataProviderField) out_Fields)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(UIDataProvider.UIDataProviderField)*)params.ptr = out_Fields;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSupportedScriptFields, params.ptr, cast(void*)0);
		*out_Fields = *cast(ScriptArray!(UIDataProvider.UIDataProviderField)*)params.ptr;
	}
	bool AllowPublishingToField(ScriptString FieldName, int ArrayIndex)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(int*)&params[12] = ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowPublishingToField, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool GetFieldValue(ScriptString FieldName, ref UIRoot.UIProviderScriptFieldValue FieldValue, int ArrayIndex)
	{
		ubyte params[104];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[12] = FieldValue;
		*cast(int*)&params[96] = ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFieldValue, params.ptr, cast(void*)0);
		*FieldValue = *cast(UIRoot.UIProviderScriptFieldValue*)&params[12];
		return *cast(bool*)&params[100];
	}
	bool SetFieldValue(ScriptString FieldName, ref const UIRoot.UIProviderScriptFieldValue FieldValue, int ArrayIndex)
	{
		ubyte params[104];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FieldName;
		*cast(UIRoot.UIProviderScriptFieldValue*)&params[12] = FieldValue;
		*cast(int*)&params[96] = ArrayIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFieldValue, params.ptr, cast(void*)0);
		*FieldValue = *cast(UIRoot.UIProviderScriptFieldValue*)&params[12];
		return *cast(bool*)&params[100];
	}
	ScriptString GenerateScriptMarkupString(ScriptName DataTag)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = DataTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.GenerateScriptMarkupString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	ScriptString GenerateFillerData(ScriptString DataTag)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DataTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.GenerateFillerData, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	bool IsProviderDisabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsProviderDisabled, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsCollectionDataType(UIRoot.EUIDataProviderFieldType FieldType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UIRoot.EUIDataProviderFieldType*)params.ptr = FieldType;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsCollectionDataType, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void NotifyPropertyChanged(ScriptName PropTag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPropertyChanged, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPropertyNotificationChangeRequest, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.RemovePropertyNotificationChangeRequest, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	int ParseTagArrayDelimiter(ref ScriptName FieldName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = FieldName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ParseTagArrayDelimiter, params.ptr, cast(void*)0);
		*FieldName = *cast(ScriptName*)params.ptr;
		return *cast(int*)&params[8];
	}
}
