module UnrealScript.Engine.Settings;

import ScriptClasses;
import UnrealScript.Engine.GameInfo;
import UnrealScript.Core.UObject;

extern(C++) interface Settings : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Settings")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUpdateFromURL;
			ScriptFunction mBuildURL;
			ScriptFunction mAppendContextsToURL;
			ScriptFunction mAppendPropertiesToURL;
			ScriptFunction mAppendDataBindingsToURL;
			ScriptFunction mGetQoSAdvertisedStringSettings;
			ScriptFunction mGetQoSAdvertisedProperties;
			ScriptFunction mGetRangedPropertyValue;
			ScriptFunction mSetRangedPropertyValue;
			ScriptFunction mGetPropertyRange;
			ScriptFunction mGetPropertyMappingType;
			ScriptFunction mHasStringSetting;
			ScriptFunction mHasProperty;
			ScriptFunction mUpdateProperties;
			ScriptFunction mUpdateStringSettings;
			ScriptFunction mGetPropertyType;
			ScriptFunction mGetPropertyValueId;
			ScriptFunction mSetPropertyValueId;
			ScriptFunction mGetStringProperty;
			ScriptFunction mSetStringProperty;
			ScriptFunction mGetIntProperty;
			ScriptFunction mSetIntProperty;
			ScriptFunction mGetFloatProperty;
			ScriptFunction mSetFloatProperty;
			ScriptFunction mSetPropertyFromStringByName;
			ScriptFunction mGetPropertyAsStringByName;
			ScriptFunction mGetPropertyAsString;
			ScriptFunction mGetPropertyColumnHeader;
			ScriptFunction mGetPropertyName;
			ScriptFunction mGetPropertyId;
			ScriptFunction mSetStringSettingValueFromStringByName;
			ScriptFunction mGetStringSettingValueNameByName;
			ScriptFunction mGetStringSettingValueName;
			ScriptFunction mIsWildcardStringSetting;
			ScriptFunction mGetStringSettingColumnHeader;
			ScriptFunction mGetStringSettingName;
			ScriptFunction mGetStringSettingId;
			ScriptFunction mGetStringSettingValueByName;
			ScriptFunction mSetStringSettingValueByName;
			ScriptFunction mGetStringSettingValueNames;
			ScriptFunction mIncrementStringSettingValue;
			ScriptFunction mGetStringSettingValue;
			ScriptFunction mSetStringSettingValue;
			ScriptFunction mGetSettingsDataDateTime;
			ScriptFunction mGetSettingsDataBlob;
			ScriptFunction mGetSettingsDataInt;
			ScriptFunction mGetSettingsDataFloat;
			ScriptFunction mGetSettingsDataString;
			ScriptFunction mEmptySettingsData;
			ScriptFunction mSetSettingsData;
			ScriptFunction mSetSettingsDataBlob;
			ScriptFunction mSetSettingsDataDateTime;
			ScriptFunction mSetSettingsDataInt;
			ScriptFunction mSetSettingsDataFloat;
			ScriptFunction mSetSettingsDataString;
		}
		public @property static final
		{
			ScriptFunction UpdateFromURL() { return mUpdateFromURL ? mUpdateFromURL : (mUpdateFromURL = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.UpdateFromURL")); }
			ScriptFunction BuildURL() { return mBuildURL ? mBuildURL : (mBuildURL = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.BuildURL")); }
			ScriptFunction AppendContextsToURL() { return mAppendContextsToURL ? mAppendContextsToURL : (mAppendContextsToURL = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.AppendContextsToURL")); }
			ScriptFunction AppendPropertiesToURL() { return mAppendPropertiesToURL ? mAppendPropertiesToURL : (mAppendPropertiesToURL = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.AppendPropertiesToURL")); }
			ScriptFunction AppendDataBindingsToURL() { return mAppendDataBindingsToURL ? mAppendDataBindingsToURL : (mAppendDataBindingsToURL = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.AppendDataBindingsToURL")); }
			ScriptFunction GetQoSAdvertisedStringSettings() { return mGetQoSAdvertisedStringSettings ? mGetQoSAdvertisedStringSettings : (mGetQoSAdvertisedStringSettings = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetQoSAdvertisedStringSettings")); }
			ScriptFunction GetQoSAdvertisedProperties() { return mGetQoSAdvertisedProperties ? mGetQoSAdvertisedProperties : (mGetQoSAdvertisedProperties = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetQoSAdvertisedProperties")); }
			ScriptFunction GetRangedPropertyValue() { return mGetRangedPropertyValue ? mGetRangedPropertyValue : (mGetRangedPropertyValue = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetRangedPropertyValue")); }
			ScriptFunction SetRangedPropertyValue() { return mSetRangedPropertyValue ? mSetRangedPropertyValue : (mSetRangedPropertyValue = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetRangedPropertyValue")); }
			ScriptFunction GetPropertyRange() { return mGetPropertyRange ? mGetPropertyRange : (mGetPropertyRange = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetPropertyRange")); }
			ScriptFunction GetPropertyMappingType() { return mGetPropertyMappingType ? mGetPropertyMappingType : (mGetPropertyMappingType = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetPropertyMappingType")); }
			ScriptFunction HasStringSetting() { return mHasStringSetting ? mHasStringSetting : (mHasStringSetting = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.HasStringSetting")); }
			ScriptFunction HasProperty() { return mHasProperty ? mHasProperty : (mHasProperty = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.HasProperty")); }
			ScriptFunction UpdateProperties() { return mUpdateProperties ? mUpdateProperties : (mUpdateProperties = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.UpdateProperties")); }
			ScriptFunction UpdateStringSettings() { return mUpdateStringSettings ? mUpdateStringSettings : (mUpdateStringSettings = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.UpdateStringSettings")); }
			ScriptFunction GetPropertyType() { return mGetPropertyType ? mGetPropertyType : (mGetPropertyType = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetPropertyType")); }
			ScriptFunction GetPropertyValueId() { return mGetPropertyValueId ? mGetPropertyValueId : (mGetPropertyValueId = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetPropertyValueId")); }
			ScriptFunction SetPropertyValueId() { return mSetPropertyValueId ? mSetPropertyValueId : (mSetPropertyValueId = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetPropertyValueId")); }
			ScriptFunction GetStringProperty() { return mGetStringProperty ? mGetStringProperty : (mGetStringProperty = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetStringProperty")); }
			ScriptFunction SetStringProperty() { return mSetStringProperty ? mSetStringProperty : (mSetStringProperty = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetStringProperty")); }
			ScriptFunction GetIntProperty() { return mGetIntProperty ? mGetIntProperty : (mGetIntProperty = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetIntProperty")); }
			ScriptFunction SetIntProperty() { return mSetIntProperty ? mSetIntProperty : (mSetIntProperty = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetIntProperty")); }
			ScriptFunction GetFloatProperty() { return mGetFloatProperty ? mGetFloatProperty : (mGetFloatProperty = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetFloatProperty")); }
			ScriptFunction SetFloatProperty() { return mSetFloatProperty ? mSetFloatProperty : (mSetFloatProperty = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetFloatProperty")); }
			ScriptFunction SetPropertyFromStringByName() { return mSetPropertyFromStringByName ? mSetPropertyFromStringByName : (mSetPropertyFromStringByName = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetPropertyFromStringByName")); }
			ScriptFunction GetPropertyAsStringByName() { return mGetPropertyAsStringByName ? mGetPropertyAsStringByName : (mGetPropertyAsStringByName = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetPropertyAsStringByName")); }
			ScriptFunction GetPropertyAsString() { return mGetPropertyAsString ? mGetPropertyAsString : (mGetPropertyAsString = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetPropertyAsString")); }
			ScriptFunction GetPropertyColumnHeader() { return mGetPropertyColumnHeader ? mGetPropertyColumnHeader : (mGetPropertyColumnHeader = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetPropertyColumnHeader")); }
			ScriptFunction GetPropertyName() { return mGetPropertyName ? mGetPropertyName : (mGetPropertyName = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetPropertyName")); }
			ScriptFunction GetPropertyId() { return mGetPropertyId ? mGetPropertyId : (mGetPropertyId = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetPropertyId")); }
			ScriptFunction SetStringSettingValueFromStringByName() { return mSetStringSettingValueFromStringByName ? mSetStringSettingValueFromStringByName : (mSetStringSettingValueFromStringByName = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetStringSettingValueFromStringByName")); }
			ScriptFunction GetStringSettingValueNameByName() { return mGetStringSettingValueNameByName ? mGetStringSettingValueNameByName : (mGetStringSettingValueNameByName = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetStringSettingValueNameByName")); }
			ScriptFunction GetStringSettingValueName() { return mGetStringSettingValueName ? mGetStringSettingValueName : (mGetStringSettingValueName = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetStringSettingValueName")); }
			ScriptFunction IsWildcardStringSetting() { return mIsWildcardStringSetting ? mIsWildcardStringSetting : (mIsWildcardStringSetting = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.IsWildcardStringSetting")); }
			ScriptFunction GetStringSettingColumnHeader() { return mGetStringSettingColumnHeader ? mGetStringSettingColumnHeader : (mGetStringSettingColumnHeader = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetStringSettingColumnHeader")); }
			ScriptFunction GetStringSettingName() { return mGetStringSettingName ? mGetStringSettingName : (mGetStringSettingName = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetStringSettingName")); }
			ScriptFunction GetStringSettingId() { return mGetStringSettingId ? mGetStringSettingId : (mGetStringSettingId = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetStringSettingId")); }
			ScriptFunction GetStringSettingValueByName() { return mGetStringSettingValueByName ? mGetStringSettingValueByName : (mGetStringSettingValueByName = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetStringSettingValueByName")); }
			ScriptFunction SetStringSettingValueByName() { return mSetStringSettingValueByName ? mSetStringSettingValueByName : (mSetStringSettingValueByName = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetStringSettingValueByName")); }
			ScriptFunction GetStringSettingValueNames() { return mGetStringSettingValueNames ? mGetStringSettingValueNames : (mGetStringSettingValueNames = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetStringSettingValueNames")); }
			ScriptFunction IncrementStringSettingValue() { return mIncrementStringSettingValue ? mIncrementStringSettingValue : (mIncrementStringSettingValue = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.IncrementStringSettingValue")); }
			ScriptFunction GetStringSettingValue() { return mGetStringSettingValue ? mGetStringSettingValue : (mGetStringSettingValue = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetStringSettingValue")); }
			ScriptFunction SetStringSettingValue() { return mSetStringSettingValue ? mSetStringSettingValue : (mSetStringSettingValue = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetStringSettingValue")); }
			ScriptFunction GetSettingsDataDateTime() { return mGetSettingsDataDateTime ? mGetSettingsDataDateTime : (mGetSettingsDataDateTime = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetSettingsDataDateTime")); }
			ScriptFunction GetSettingsDataBlob() { return mGetSettingsDataBlob ? mGetSettingsDataBlob : (mGetSettingsDataBlob = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetSettingsDataBlob")); }
			ScriptFunction GetSettingsDataInt() { return mGetSettingsDataInt ? mGetSettingsDataInt : (mGetSettingsDataInt = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetSettingsDataInt")); }
			ScriptFunction GetSettingsDataFloat() { return mGetSettingsDataFloat ? mGetSettingsDataFloat : (mGetSettingsDataFloat = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetSettingsDataFloat")); }
			ScriptFunction GetSettingsDataString() { return mGetSettingsDataString ? mGetSettingsDataString : (mGetSettingsDataString = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.GetSettingsDataString")); }
			ScriptFunction EmptySettingsData() { return mEmptySettingsData ? mEmptySettingsData : (mEmptySettingsData = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.EmptySettingsData")); }
			ScriptFunction SetSettingsData() { return mSetSettingsData ? mSetSettingsData : (mSetSettingsData = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetSettingsData")); }
			ScriptFunction SetSettingsDataBlob() { return mSetSettingsDataBlob ? mSetSettingsDataBlob : (mSetSettingsDataBlob = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetSettingsDataBlob")); }
			ScriptFunction SetSettingsDataDateTime() { return mSetSettingsDataDateTime ? mSetSettingsDataDateTime : (mSetSettingsDataDateTime = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetSettingsDataDateTime")); }
			ScriptFunction SetSettingsDataInt() { return mSetSettingsDataInt ? mSetSettingsDataInt : (mSetSettingsDataInt = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetSettingsDataInt")); }
			ScriptFunction SetSettingsDataFloat() { return mSetSettingsDataFloat ? mSetSettingsDataFloat : (mSetSettingsDataFloat = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetSettingsDataFloat")); }
			ScriptFunction SetSettingsDataString() { return mSetSettingsDataString ? mSetSettingsDataString : (mSetSettingsDataString = ScriptObject.Find!(ScriptFunction)("Function Engine.Settings.SetSettingsDataString")); }
		}
	}
	enum EOnlineDataAdvertisementType : ubyte
	{
		ODAT_DontAdvertise = 0,
		ODAT_OnlineService = 1,
		ODAT_QoS = 2,
		ODAT_OnlineServiceAndQoS = 3,
		ODAT_MAX = 4,
	}
	enum ESettingsDataType : ubyte
	{
		SDT_Empty = 0,
		SDT_Int32 = 1,
		SDT_Int64 = 2,
		SDT_Double = 3,
		SDT_String = 4,
		SDT_Float = 5,
		SDT_Blob = 6,
		SDT_DateTime = 7,
		SDT_MAX = 8,
	}
	enum EPropertyValueMappingType : ubyte
	{
		PVMT_RawValue = 0,
		PVMT_PredefinedValues = 1,
		PVMT_Ranged = 2,
		PVMT_IdMapped = 3,
		PVMT_MAX = 4,
	}
	struct LocalizedStringSetting
	{
		private ubyte __buffer__[9];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Settings.LocalizedStringSetting")); }
		@property final auto ref
		{
			int Id() { return *cast(int*)(cast(size_t)&this + 0); }
			int ValueIndex() { return *cast(int*)(cast(size_t)&this + 4); }
			Settings.EOnlineDataAdvertisementType AdvertisementType() { return *cast(Settings.EOnlineDataAdvertisementType*)(cast(size_t)&this + 8); }
		}
	}
	struct SettingsProperty
	{
		private ubyte __buffer__[17];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Settings.SettingsProperty")); }
		@property final auto ref
		{
			int PropertyId() { return *cast(int*)(cast(size_t)&this + 0); }
			Settings.SettingsData Data() { return *cast(Settings.SettingsData*)(cast(size_t)&this + 4); }
			Settings.EOnlineDataAdvertisementType AdvertisementType() { return *cast(Settings.EOnlineDataAdvertisementType*)(cast(size_t)&this + 16); }
		}
	}
	struct SettingsData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Settings.SettingsData")); }
		@property final auto ref
		{
			Settings.ESettingsDataType Type() { return *cast(Settings.ESettingsDataType*)(cast(size_t)&this + 0); }
			int Value1() { return *cast(int*)(cast(size_t)&this + 4); }
			UObject.Pointer Value2() { return *cast(UObject.Pointer*)(cast(size_t)&this + 8); }
		}
	}
	struct IdToStringMapping
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Settings.IdToStringMapping")); }
		@property final auto ref
		{
			int Id() { return *cast(int*)(cast(size_t)&this + 0); }
			ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		}
	}
	struct LocalizedStringSettingMetaData
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Settings.LocalizedStringSettingMetaData")); }
		@property final auto ref
		{
			int Id() { return *cast(int*)(cast(size_t)&this + 0); }
			ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			ScriptString ColumnHeaderText() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			ScriptArray!(Settings.StringIdToStringMapping) ValueMappings() { return *cast(ScriptArray!(Settings.StringIdToStringMapping)*)(cast(size_t)&this + 24); }
		}
	}
	struct StringIdToStringMapping
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Settings.StringIdToStringMapping")); }
		@property final
		{
			auto ref
			{
				int Id() { return *cast(int*)(cast(size_t)&this + 0); }
				ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			}
			bool bIsWildcard() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bIsWildcard(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	struct SettingsPropertyPropertyMetaData
	{
		private ubyte __buffer__[64];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Settings.SettingsPropertyPropertyMetaData")); }
		@property final auto ref
		{
			int Id() { return *cast(int*)(cast(size_t)&this + 0); }
			ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			ScriptString ColumnHeaderText() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			Settings.EPropertyValueMappingType MappingType() { return *cast(Settings.EPropertyValueMappingType*)(cast(size_t)&this + 24); }
			ScriptArray!(Settings.IdToStringMapping) ValueMappings() { return *cast(ScriptArray!(Settings.IdToStringMapping)*)(cast(size_t)&this + 28); }
			ScriptArray!(Settings.SettingsData) PredefinedValues() { return *cast(ScriptArray!(Settings.SettingsData)*)(cast(size_t)&this + 40); }
			float MinVal() { return *cast(float*)(cast(size_t)&this + 52); }
			float MaxVal() { return *cast(float*)(cast(size_t)&this + 56); }
			float RangeIncrement() { return *cast(float*)(cast(size_t)&this + 60); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Settings.LocalizedStringSetting) LocalizedSettings() { return *cast(ScriptArray!(Settings.LocalizedStringSetting)*)(cast(size_t)cast(void*)this + 60); }
		ScriptArray!(Settings.SettingsProperty) Properties() { return *cast(ScriptArray!(Settings.SettingsProperty)*)(cast(size_t)cast(void*)this + 72); }
		ScriptArray!(Settings.LocalizedStringSettingMetaData) LocalizedSettingsMappings() { return *cast(ScriptArray!(Settings.LocalizedStringSettingMetaData)*)(cast(size_t)cast(void*)this + 84); }
		ScriptArray!(Settings.SettingsPropertyPropertyMetaData) PropertyMappings() { return *cast(ScriptArray!(Settings.SettingsPropertyPropertyMetaData)*)(cast(size_t)cast(void*)this + 96); }
	}
final:
	void UpdateFromURL(ScriptString* pURL, GameInfo Game)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *pURL;
		*cast(GameInfo*)&params[12] = Game;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateFromURL, params.ptr, cast(void*)0);
		*pURL = *cast(ScriptString*)params.ptr;
	}
	void BuildURL(ScriptString* pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.BuildURL, params.ptr, cast(void*)0);
		*pURL = *cast(ScriptString*)params.ptr;
	}
	void AppendContextsToURL(ScriptString* pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.AppendContextsToURL, params.ptr, cast(void*)0);
		*pURL = *cast(ScriptString*)params.ptr;
	}
	void AppendPropertiesToURL(ScriptString* pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.AppendPropertiesToURL, params.ptr, cast(void*)0);
		*pURL = *cast(ScriptString*)params.ptr;
	}
	void AppendDataBindingsToURL(ScriptString* pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.AppendDataBindingsToURL, params.ptr, cast(void*)0);
		*pURL = *cast(ScriptString*)params.ptr;
	}
	void GetQoSAdvertisedStringSettings(ScriptArray!(Settings.LocalizedStringSetting)* QoSSettings)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(Settings.LocalizedStringSetting)*)params.ptr = *QoSSettings;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetQoSAdvertisedStringSettings, params.ptr, cast(void*)0);
		*QoSSettings = *cast(ScriptArray!(Settings.LocalizedStringSetting)*)params.ptr;
	}
	void GetQoSAdvertisedProperties(ScriptArray!(Settings.SettingsProperty)* QoSProps)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(Settings.SettingsProperty)*)params.ptr = *QoSProps;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetQoSAdvertisedProperties, params.ptr, cast(void*)0);
		*QoSProps = *cast(ScriptArray!(Settings.SettingsProperty)*)params.ptr;
	}
	bool GetRangedPropertyValue(int PropertyId, float* OutValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(float*)&params[4] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRangedPropertyValue, params.ptr, cast(void*)0);
		*OutValue = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	bool SetRangedPropertyValue(int PropertyId, float NewValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(float*)&params[4] = NewValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRangedPropertyValue, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool GetPropertyRange(int PropertyId, float* OutMinValue, float* OutMaxValue, float* RangeIncrement, ubyte* bFormatAsInt)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(float*)&params[4] = *OutMinValue;
		*cast(float*)&params[8] = *OutMaxValue;
		*cast(float*)&params[12] = *RangeIncrement;
		params[16] = *bFormatAsInt;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropertyRange, params.ptr, cast(void*)0);
		*OutMinValue = *cast(float*)&params[4];
		*OutMaxValue = *cast(float*)&params[8];
		*RangeIncrement = *cast(float*)&params[12];
		*bFormatAsInt = params[16];
		return *cast(bool*)&params[20];
	}
	bool GetPropertyMappingType(int PropertyId, Settings.EPropertyValueMappingType* OutType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(Settings.EPropertyValueMappingType*)&params[4] = *OutType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropertyMappingType, params.ptr, cast(void*)0);
		*OutType = *cast(Settings.EPropertyValueMappingType*)&params[4];
		return *cast(bool*)&params[8];
	}
	bool HasStringSetting(int SettingId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasStringSetting, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool HasProperty(int PropertyId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasProperty, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void UpdateProperties(ScriptArray!(Settings.SettingsProperty)* Props, bool bShouldAddIfMissing)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(Settings.SettingsProperty)*)params.ptr = *Props;
		*cast(bool*)&params[12] = bShouldAddIfMissing;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateProperties, params.ptr, cast(void*)0);
		*Props = *cast(ScriptArray!(Settings.SettingsProperty)*)params.ptr;
	}
	void UpdateStringSettings(ScriptArray!(Settings.LocalizedStringSetting)* pSettings, bool bShouldAddIfMissing)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(Settings.LocalizedStringSetting)*)params.ptr = *pSettings;
		*cast(bool*)&params[12] = bShouldAddIfMissing;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateStringSettings, params.ptr, cast(void*)0);
		*pSettings = *cast(ScriptArray!(Settings.LocalizedStringSetting)*)params.ptr;
	}
	Settings.ESettingsDataType GetPropertyType(int PropertyId)
	{
		ubyte params[5];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropertyType, params.ptr, cast(void*)0);
		return *cast(Settings.ESettingsDataType*)&params[4];
	}
	bool GetPropertyValueId(int PropertyId, int* ValueId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(int*)&params[4] = *ValueId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropertyValueId, params.ptr, cast(void*)0);
		*ValueId = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	bool SetPropertyValueId(int PropertyId, int ValueId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(int*)&params[4] = ValueId;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPropertyValueId, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool GetStringProperty(int PropertyId, ScriptString* Value)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(ScriptString*)&params[4] = *Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringProperty, params.ptr, cast(void*)0);
		*Value = *cast(ScriptString*)&params[4];
		return *cast(bool*)&params[16];
	}
	void SetStringProperty(int PropertyId, ScriptString Value)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(ScriptString*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetStringProperty, params.ptr, cast(void*)0);
	}
	bool GetIntProperty(int PropertyId, int* Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(int*)&params[4] = *Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetIntProperty, params.ptr, cast(void*)0);
		*Value = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	void SetIntProperty(int PropertyId, int Value)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(int*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetIntProperty, params.ptr, cast(void*)0);
	}
	bool GetFloatProperty(int PropertyId, float* Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(float*)&params[4] = *Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFloatProperty, params.ptr, cast(void*)0);
		*Value = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	void SetFloatProperty(int PropertyId, float Value)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(float*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFloatProperty, params.ptr, cast(void*)0);
	}
	bool SetPropertyFromStringByName(ScriptName PropertyName, ScriptString* NewValue)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropertyName;
		*cast(ScriptString*)&params[8] = *NewValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPropertyFromStringByName, params.ptr, cast(void*)0);
		*NewValue = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	ScriptString GetPropertyAsStringByName(ScriptName PropertyName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropertyName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropertyAsStringByName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	ScriptString GetPropertyAsString(int PropertyId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropertyAsString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString GetPropertyColumnHeader(int PropertyId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropertyColumnHeader, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptName GetPropertyName(int PropertyId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropertyName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	bool GetPropertyId(ScriptName PropertyName, int* PropertyId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropertyName;
		*cast(int*)&params[8] = *PropertyId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropertyId, params.ptr, cast(void*)0);
		*PropertyId = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool SetStringSettingValueFromStringByName(ScriptName StringSettingName, ScriptString* NewValue)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StringSettingName;
		*cast(ScriptString*)&params[8] = *NewValue;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetStringSettingValueFromStringByName, params.ptr, cast(void*)0);
		*NewValue = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	ScriptName GetStringSettingValueNameByName(ScriptName StringSettingName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StringSettingName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringSettingValueNameByName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	ScriptName GetStringSettingValueName(int StringSettingId, int ValueIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		*cast(int*)&params[4] = ValueIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringSettingValueName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	bool IsWildcardStringSetting(int StringSettingId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsWildcardStringSetting, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptString GetStringSettingColumnHeader(int StringSettingId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringSettingColumnHeader, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptName GetStringSettingName(int StringSettingId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringSettingName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	bool GetStringSettingId(ScriptName StringSettingName, int* StringSettingId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StringSettingName;
		*cast(int*)&params[8] = *StringSettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringSettingId, params.ptr, cast(void*)0);
		*StringSettingId = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetStringSettingValueByName(ScriptName StringSettingName, int* ValueIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StringSettingName;
		*cast(int*)&params[8] = *ValueIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringSettingValueByName, params.ptr, cast(void*)0);
		*ValueIndex = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	void SetStringSettingValueByName(ScriptName StringSettingName, int ValueIndex, bool bShouldAutoAdd)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StringSettingName;
		*cast(int*)&params[8] = ValueIndex;
		*cast(bool*)&params[12] = bShouldAutoAdd;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetStringSettingValueByName, params.ptr, cast(void*)0);
	}
	bool GetStringSettingValueNames(int StringSettingId, ScriptArray!(Settings.IdToStringMapping)* Values)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		*cast(ScriptArray!(Settings.IdToStringMapping)*)&params[4] = *Values;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringSettingValueNames, params.ptr, cast(void*)0);
		*Values = *cast(ScriptArray!(Settings.IdToStringMapping)*)&params[4];
		return *cast(bool*)&params[16];
	}
	bool IncrementStringSettingValue(int StringSettingId, int Direction, bool bShouldWrap)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		*cast(int*)&params[4] = Direction;
		*cast(bool*)&params[8] = bShouldWrap;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementStringSettingValue, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool GetStringSettingValue(int StringSettingId, int* ValueIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		*cast(int*)&params[4] = *ValueIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringSettingValue, params.ptr, cast(void*)0);
		*ValueIndex = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	void SetStringSettingValue(int StringSettingId, int ValueIndex, bool bShouldAutoAdd)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		*cast(int*)&params[4] = ValueIndex;
		*cast(bool*)&params[8] = bShouldAutoAdd;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetStringSettingValue, params.ptr, cast(void*)0);
	}
	static void GetSettingsDataDateTime(Settings.SettingsData* Data, int* OutInt1, int* OutInt2)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(int*)&params[12] = *OutInt1;
		*cast(int*)&params[16] = *OutInt2;
		StaticClass.ProcessEvent(Functions.GetSettingsDataDateTime, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		*OutInt1 = *cast(int*)&params[12];
		*OutInt2 = *cast(int*)&params[16];
	}
	static void GetSettingsDataBlob(Settings.SettingsData* Data, ScriptArray!(ubyte)* OutBlob)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(ScriptArray!(ubyte)*)&params[12] = *OutBlob;
		StaticClass.ProcessEvent(Functions.GetSettingsDataBlob, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		*OutBlob = *cast(ScriptArray!(ubyte)*)&params[12];
	}
	static int GetSettingsDataInt(Settings.SettingsData* Data)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		StaticClass.ProcessEvent(Functions.GetSettingsDataInt, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		return *cast(int*)&params[12];
	}
	static float GetSettingsDataFloat(Settings.SettingsData* Data)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		StaticClass.ProcessEvent(Functions.GetSettingsDataFloat, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		return *cast(float*)&params[12];
	}
	static ScriptString GetSettingsDataString(Settings.SettingsData* Data)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		StaticClass.ProcessEvent(Functions.GetSettingsDataString, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		return *cast(ScriptString*)&params[12];
	}
	static void EmptySettingsData(Settings.SettingsData* Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		StaticClass.ProcessEvent(Functions.EmptySettingsData, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
	static void SetSettingsData(Settings.SettingsData* Data, Settings.SettingsData* Data2Copy)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(Settings.SettingsData*)&params[12] = *Data2Copy;
		StaticClass.ProcessEvent(Functions.SetSettingsData, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		*Data2Copy = *cast(Settings.SettingsData*)&params[12];
	}
	static void SetSettingsDataBlob(Settings.SettingsData* Data, ScriptArray!(ubyte)* InBlob)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(ScriptArray!(ubyte)*)&params[12] = *InBlob;
		StaticClass.ProcessEvent(Functions.SetSettingsDataBlob, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		*InBlob = *cast(ScriptArray!(ubyte)*)&params[12];
	}
	static void SetSettingsDataDateTime(Settings.SettingsData* Data, int InInt1, int InInt2)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(int*)&params[12] = InInt1;
		*cast(int*)&params[16] = InInt2;
		StaticClass.ProcessEvent(Functions.SetSettingsDataDateTime, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
	static void SetSettingsDataInt(Settings.SettingsData* Data, int InInt)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(int*)&params[12] = InInt;
		StaticClass.ProcessEvent(Functions.SetSettingsDataInt, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
	static void SetSettingsDataFloat(Settings.SettingsData* Data, float InFloat)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(float*)&params[12] = InFloat;
		StaticClass.ProcessEvent(Functions.SetSettingsDataFloat, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
	static void SetSettingsDataString(Settings.SettingsData* Data, ScriptString InString)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(ScriptString*)&params[12] = InString;
		StaticClass.ProcessEvent(Functions.SetSettingsDataString, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
}
