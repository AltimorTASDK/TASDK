module UnrealScript.Engine.Settings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.GameInfo;
import UnrealScript.Core.UObject;

extern(C++) interface Settings : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Settings")()); }
	private static __gshared Settings mDefaultProperties;
	@property final static Settings DefaultProperties() { mixin(MGDPC!(Settings, "Settings Engine.Default__Settings")()); }
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
			ScriptFunction UpdateFromURL() { mixin(MGF!("mUpdateFromURL", "Function Engine.Settings.UpdateFromURL")()); }
			ScriptFunction BuildURL() { mixin(MGF!("mBuildURL", "Function Engine.Settings.BuildURL")()); }
			ScriptFunction AppendContextsToURL() { mixin(MGF!("mAppendContextsToURL", "Function Engine.Settings.AppendContextsToURL")()); }
			ScriptFunction AppendPropertiesToURL() { mixin(MGF!("mAppendPropertiesToURL", "Function Engine.Settings.AppendPropertiesToURL")()); }
			ScriptFunction AppendDataBindingsToURL() { mixin(MGF!("mAppendDataBindingsToURL", "Function Engine.Settings.AppendDataBindingsToURL")()); }
			ScriptFunction GetQoSAdvertisedStringSettings() { mixin(MGF!("mGetQoSAdvertisedStringSettings", "Function Engine.Settings.GetQoSAdvertisedStringSettings")()); }
			ScriptFunction GetQoSAdvertisedProperties() { mixin(MGF!("mGetQoSAdvertisedProperties", "Function Engine.Settings.GetQoSAdvertisedProperties")()); }
			ScriptFunction GetRangedPropertyValue() { mixin(MGF!("mGetRangedPropertyValue", "Function Engine.Settings.GetRangedPropertyValue")()); }
			ScriptFunction SetRangedPropertyValue() { mixin(MGF!("mSetRangedPropertyValue", "Function Engine.Settings.SetRangedPropertyValue")()); }
			ScriptFunction GetPropertyRange() { mixin(MGF!("mGetPropertyRange", "Function Engine.Settings.GetPropertyRange")()); }
			ScriptFunction GetPropertyMappingType() { mixin(MGF!("mGetPropertyMappingType", "Function Engine.Settings.GetPropertyMappingType")()); }
			ScriptFunction HasStringSetting() { mixin(MGF!("mHasStringSetting", "Function Engine.Settings.HasStringSetting")()); }
			ScriptFunction HasProperty() { mixin(MGF!("mHasProperty", "Function Engine.Settings.HasProperty")()); }
			ScriptFunction UpdateProperties() { mixin(MGF!("mUpdateProperties", "Function Engine.Settings.UpdateProperties")()); }
			ScriptFunction UpdateStringSettings() { mixin(MGF!("mUpdateStringSettings", "Function Engine.Settings.UpdateStringSettings")()); }
			ScriptFunction GetPropertyType() { mixin(MGF!("mGetPropertyType", "Function Engine.Settings.GetPropertyType")()); }
			ScriptFunction GetPropertyValueId() { mixin(MGF!("mGetPropertyValueId", "Function Engine.Settings.GetPropertyValueId")()); }
			ScriptFunction SetPropertyValueId() { mixin(MGF!("mSetPropertyValueId", "Function Engine.Settings.SetPropertyValueId")()); }
			ScriptFunction GetStringProperty() { mixin(MGF!("mGetStringProperty", "Function Engine.Settings.GetStringProperty")()); }
			ScriptFunction SetStringProperty() { mixin(MGF!("mSetStringProperty", "Function Engine.Settings.SetStringProperty")()); }
			ScriptFunction GetIntProperty() { mixin(MGF!("mGetIntProperty", "Function Engine.Settings.GetIntProperty")()); }
			ScriptFunction SetIntProperty() { mixin(MGF!("mSetIntProperty", "Function Engine.Settings.SetIntProperty")()); }
			ScriptFunction GetFloatProperty() { mixin(MGF!("mGetFloatProperty", "Function Engine.Settings.GetFloatProperty")()); }
			ScriptFunction SetFloatProperty() { mixin(MGF!("mSetFloatProperty", "Function Engine.Settings.SetFloatProperty")()); }
			ScriptFunction SetPropertyFromStringByName() { mixin(MGF!("mSetPropertyFromStringByName", "Function Engine.Settings.SetPropertyFromStringByName")()); }
			ScriptFunction GetPropertyAsStringByName() { mixin(MGF!("mGetPropertyAsStringByName", "Function Engine.Settings.GetPropertyAsStringByName")()); }
			ScriptFunction GetPropertyAsString() { mixin(MGF!("mGetPropertyAsString", "Function Engine.Settings.GetPropertyAsString")()); }
			ScriptFunction GetPropertyColumnHeader() { mixin(MGF!("mGetPropertyColumnHeader", "Function Engine.Settings.GetPropertyColumnHeader")()); }
			ScriptFunction GetPropertyName() { mixin(MGF!("mGetPropertyName", "Function Engine.Settings.GetPropertyName")()); }
			ScriptFunction GetPropertyId() { mixin(MGF!("mGetPropertyId", "Function Engine.Settings.GetPropertyId")()); }
			ScriptFunction SetStringSettingValueFromStringByName() { mixin(MGF!("mSetStringSettingValueFromStringByName", "Function Engine.Settings.SetStringSettingValueFromStringByName")()); }
			ScriptFunction GetStringSettingValueNameByName() { mixin(MGF!("mGetStringSettingValueNameByName", "Function Engine.Settings.GetStringSettingValueNameByName")()); }
			ScriptFunction GetStringSettingValueName() { mixin(MGF!("mGetStringSettingValueName", "Function Engine.Settings.GetStringSettingValueName")()); }
			ScriptFunction IsWildcardStringSetting() { mixin(MGF!("mIsWildcardStringSetting", "Function Engine.Settings.IsWildcardStringSetting")()); }
			ScriptFunction GetStringSettingColumnHeader() { mixin(MGF!("mGetStringSettingColumnHeader", "Function Engine.Settings.GetStringSettingColumnHeader")()); }
			ScriptFunction GetStringSettingName() { mixin(MGF!("mGetStringSettingName", "Function Engine.Settings.GetStringSettingName")()); }
			ScriptFunction GetStringSettingId() { mixin(MGF!("mGetStringSettingId", "Function Engine.Settings.GetStringSettingId")()); }
			ScriptFunction GetStringSettingValueByName() { mixin(MGF!("mGetStringSettingValueByName", "Function Engine.Settings.GetStringSettingValueByName")()); }
			ScriptFunction SetStringSettingValueByName() { mixin(MGF!("mSetStringSettingValueByName", "Function Engine.Settings.SetStringSettingValueByName")()); }
			ScriptFunction GetStringSettingValueNames() { mixin(MGF!("mGetStringSettingValueNames", "Function Engine.Settings.GetStringSettingValueNames")()); }
			ScriptFunction IncrementStringSettingValue() { mixin(MGF!("mIncrementStringSettingValue", "Function Engine.Settings.IncrementStringSettingValue")()); }
			ScriptFunction GetStringSettingValue() { mixin(MGF!("mGetStringSettingValue", "Function Engine.Settings.GetStringSettingValue")()); }
			ScriptFunction SetStringSettingValue() { mixin(MGF!("mSetStringSettingValue", "Function Engine.Settings.SetStringSettingValue")()); }
			ScriptFunction GetSettingsDataDateTime() { mixin(MGF!("mGetSettingsDataDateTime", "Function Engine.Settings.GetSettingsDataDateTime")()); }
			ScriptFunction GetSettingsDataBlob() { mixin(MGF!("mGetSettingsDataBlob", "Function Engine.Settings.GetSettingsDataBlob")()); }
			ScriptFunction GetSettingsDataInt() { mixin(MGF!("mGetSettingsDataInt", "Function Engine.Settings.GetSettingsDataInt")()); }
			ScriptFunction GetSettingsDataFloat() { mixin(MGF!("mGetSettingsDataFloat", "Function Engine.Settings.GetSettingsDataFloat")()); }
			ScriptFunction GetSettingsDataString() { mixin(MGF!("mGetSettingsDataString", "Function Engine.Settings.GetSettingsDataString")()); }
			ScriptFunction EmptySettingsData() { mixin(MGF!("mEmptySettingsData", "Function Engine.Settings.EmptySettingsData")()); }
			ScriptFunction SetSettingsData() { mixin(MGF!("mSetSettingsData", "Function Engine.Settings.SetSettingsData")()); }
			ScriptFunction SetSettingsDataBlob() { mixin(MGF!("mSetSettingsDataBlob", "Function Engine.Settings.SetSettingsDataBlob")()); }
			ScriptFunction SetSettingsDataDateTime() { mixin(MGF!("mSetSettingsDataDateTime", "Function Engine.Settings.SetSettingsDataDateTime")()); }
			ScriptFunction SetSettingsDataInt() { mixin(MGF!("mSetSettingsDataInt", "Function Engine.Settings.SetSettingsDataInt")()); }
			ScriptFunction SetSettingsDataFloat() { mixin(MGF!("mSetSettingsDataFloat", "Function Engine.Settings.SetSettingsDataFloat")()); }
			ScriptFunction SetSettingsDataString() { mixin(MGF!("mSetSettingsDataString", "Function Engine.Settings.SetSettingsDataString")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Settings.LocalizedStringSetting")()); }
		@property final auto ref
		{
			int Id() { mixin(MGPS!(int, 0)()); }
			int ValueIndex() { mixin(MGPS!(int, 4)()); }
			Settings.EOnlineDataAdvertisementType AdvertisementType() { mixin(MGPS!(Settings.EOnlineDataAdvertisementType, 8)()); }
		}
	}
	struct SettingsProperty
	{
		private ubyte __buffer__[17];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Settings.SettingsProperty")()); }
		@property final auto ref
		{
			int PropertyId() { mixin(MGPS!(int, 0)()); }
			Settings.SettingsData Data() { mixin(MGPS!(Settings.SettingsData, 4)()); }
			Settings.EOnlineDataAdvertisementType AdvertisementType() { mixin(MGPS!(Settings.EOnlineDataAdvertisementType, 16)()); }
		}
	}
	struct SettingsData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Settings.SettingsData")()); }
		@property final auto ref
		{
			Settings.ESettingsDataType Type() { mixin(MGPS!(Settings.ESettingsDataType, 0)()); }
			int Value1() { mixin(MGPS!(int, 4)()); }
			UObject.Pointer Value2() { mixin(MGPS!(UObject.Pointer, 8)()); }
		}
	}
	struct IdToStringMapping
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Settings.IdToStringMapping")()); }
		@property final auto ref
		{
			int Id() { mixin(MGPS!(int, 0)()); }
			ScriptName Name() { mixin(MGPS!(ScriptName, 4)()); }
		}
	}
	struct LocalizedStringSettingMetaData
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Settings.LocalizedStringSettingMetaData")()); }
		@property final auto ref
		{
			int Id() { mixin(MGPS!(int, 0)()); }
			ScriptName Name() { mixin(MGPS!(ScriptName, 4)()); }
			ScriptString ColumnHeaderText() { mixin(MGPS!(ScriptString, 12)()); }
			ScriptArray!(Settings.StringIdToStringMapping) ValueMappings() { mixin(MGPS!(ScriptArray!(Settings.StringIdToStringMapping), 24)()); }
		}
	}
	struct StringIdToStringMapping
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Settings.StringIdToStringMapping")()); }
		@property final
		{
			auto ref
			{
				int Id() { mixin(MGPS!(int, 0)()); }
				ScriptName Name() { mixin(MGPS!(ScriptName, 4)()); }
			}
			bool bIsWildcard() { mixin(MGBPS!(12, 0x1)()); }
			bool bIsWildcard(bool val) { mixin(MSBPS!(12, 0x1)()); }
		}
	}
	struct SettingsPropertyPropertyMetaData
	{
		private ubyte __buffer__[64];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.Settings.SettingsPropertyPropertyMetaData")()); }
		@property final auto ref
		{
			int Id() { mixin(MGPS!(int, 0)()); }
			ScriptName Name() { mixin(MGPS!(ScriptName, 4)()); }
			ScriptString ColumnHeaderText() { mixin(MGPS!(ScriptString, 12)()); }
			Settings.EPropertyValueMappingType MappingType() { mixin(MGPS!(Settings.EPropertyValueMappingType, 24)()); }
			ScriptArray!(Settings.IdToStringMapping) ValueMappings() { mixin(MGPS!(ScriptArray!(Settings.IdToStringMapping), 28)()); }
			ScriptArray!(Settings.SettingsData) PredefinedValues() { mixin(MGPS!(ScriptArray!(Settings.SettingsData), 40)()); }
			float MinVal() { mixin(MGPS!(float, 52)()); }
			float MaxVal() { mixin(MGPS!(float, 56)()); }
			float RangeIncrement() { mixin(MGPS!(float, 60)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Settings.LocalizedStringSetting) LocalizedSettings() { mixin(MGPC!(ScriptArray!(Settings.LocalizedStringSetting), 60)()); }
		ScriptArray!(Settings.SettingsProperty) Properties() { mixin(MGPC!(ScriptArray!(Settings.SettingsProperty), 72)()); }
		ScriptArray!(Settings.LocalizedStringSettingMetaData) LocalizedSettingsMappings() { mixin(MGPC!(ScriptArray!(Settings.LocalizedStringSettingMetaData), 84)()); }
		ScriptArray!(Settings.SettingsPropertyPropertyMetaData) PropertyMappings() { mixin(MGPC!(ScriptArray!(Settings.SettingsPropertyPropertyMetaData), 96)()); }
	}
final:
	void UpdateFromURL(ref const ScriptString pURL, GameInfo Game)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(GameInfo*)&params[12] = Game;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateFromURL, params.ptr, cast(void*)0);
		*pURL = *cast(ScriptString*)params.ptr;
	}
	void BuildURL(ref ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.BuildURL, params.ptr, cast(void*)0);
		*pURL = *cast(ScriptString*)params.ptr;
	}
	void AppendContextsToURL(ref ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.AppendContextsToURL, params.ptr, cast(void*)0);
		*pURL = *cast(ScriptString*)params.ptr;
	}
	void AppendPropertiesToURL(ref ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.AppendPropertiesToURL, params.ptr, cast(void*)0);
		*pURL = *cast(ScriptString*)params.ptr;
	}
	void AppendDataBindingsToURL(ref ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.AppendDataBindingsToURL, params.ptr, cast(void*)0);
		*pURL = *cast(ScriptString*)params.ptr;
	}
	void GetQoSAdvertisedStringSettings(ref ScriptArray!(Settings.LocalizedStringSetting) QoSSettings)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(Settings.LocalizedStringSetting)*)params.ptr = QoSSettings;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetQoSAdvertisedStringSettings, params.ptr, cast(void*)0);
		*QoSSettings = *cast(ScriptArray!(Settings.LocalizedStringSetting)*)params.ptr;
	}
	void GetQoSAdvertisedProperties(ref ScriptArray!(Settings.SettingsProperty) QoSProps)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(Settings.SettingsProperty)*)params.ptr = QoSProps;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetQoSAdvertisedProperties, params.ptr, cast(void*)0);
		*QoSProps = *cast(ScriptArray!(Settings.SettingsProperty)*)params.ptr;
	}
	bool GetRangedPropertyValue(int PropertyId, ref float OutValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(float*)&params[4] = OutValue;
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
	bool GetPropertyRange(int PropertyId, ref float OutMinValue, ref float OutMaxValue, ref float RangeIncrement, ref ubyte bFormatAsInt)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(float*)&params[4] = OutMinValue;
		*cast(float*)&params[8] = OutMaxValue;
		*cast(float*)&params[12] = RangeIncrement;
		params[16] = bFormatAsInt;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropertyRange, params.ptr, cast(void*)0);
		*OutMinValue = *cast(float*)&params[4];
		*OutMaxValue = *cast(float*)&params[8];
		*RangeIncrement = *cast(float*)&params[12];
		*bFormatAsInt = params[16];
		return *cast(bool*)&params[20];
	}
	bool GetPropertyMappingType(int PropertyId, ref Settings.EPropertyValueMappingType OutType)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(Settings.EPropertyValueMappingType*)&params[4] = OutType;
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
	void UpdateProperties(ref const ScriptArray!(Settings.SettingsProperty) Props, bool bShouldAddIfMissing)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(Settings.SettingsProperty)*)params.ptr = Props;
		*cast(bool*)&params[12] = bShouldAddIfMissing;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateProperties, params.ptr, cast(void*)0);
		*Props = *cast(ScriptArray!(Settings.SettingsProperty)*)params.ptr;
	}
	void UpdateStringSettings(ref const ScriptArray!(Settings.LocalizedStringSetting) pSettings, bool bShouldAddIfMissing)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(Settings.LocalizedStringSetting)*)params.ptr = pSettings;
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
	bool GetPropertyValueId(int PropertyId, ref int ValueId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(int*)&params[4] = ValueId;
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
	bool GetStringProperty(int PropertyId, ref ScriptString Value)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(ScriptString*)&params[4] = Value;
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
	bool GetIntProperty(int PropertyId, ref int Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(int*)&params[4] = Value;
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
	bool GetFloatProperty(int PropertyId, ref float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(float*)&params[4] = Value;
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
	bool SetPropertyFromStringByName(ScriptName PropertyName, ref const ScriptString NewValue)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropertyName;
		*cast(ScriptString*)&params[8] = NewValue;
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
	bool GetPropertyId(ScriptName PropertyName, ref int PropertyId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropertyName;
		*cast(int*)&params[8] = PropertyId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPropertyId, params.ptr, cast(void*)0);
		*PropertyId = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool SetStringSettingValueFromStringByName(ScriptName StringSettingName, ref const ScriptString NewValue)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StringSettingName;
		*cast(ScriptString*)&params[8] = NewValue;
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
	bool GetStringSettingId(ScriptName StringSettingName, ref int StringSettingId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StringSettingName;
		*cast(int*)&params[8] = StringSettingId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStringSettingId, params.ptr, cast(void*)0);
		*StringSettingId = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetStringSettingValueByName(ScriptName StringSettingName, ref int ValueIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StringSettingName;
		*cast(int*)&params[8] = ValueIndex;
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
	bool GetStringSettingValueNames(int StringSettingId, ref ScriptArray!(Settings.IdToStringMapping) Values)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		*cast(ScriptArray!(Settings.IdToStringMapping)*)&params[4] = Values;
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
	bool GetStringSettingValue(int StringSettingId, ref int ValueIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		*cast(int*)&params[4] = ValueIndex;
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
	static void GetSettingsDataDateTime(ref Settings.SettingsData Data, ref int OutInt1, ref int OutInt2)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = Data;
		*cast(int*)&params[12] = OutInt1;
		*cast(int*)&params[16] = OutInt2;
		StaticClass.ProcessEvent(Functions.GetSettingsDataDateTime, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		*OutInt1 = *cast(int*)&params[12];
		*OutInt2 = *cast(int*)&params[16];
	}
	static void GetSettingsDataBlob(ref Settings.SettingsData Data, ref ScriptArray!(ubyte) OutBlob)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = Data;
		*cast(ScriptArray!(ubyte)*)&params[12] = OutBlob;
		StaticClass.ProcessEvent(Functions.GetSettingsDataBlob, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		*OutBlob = *cast(ScriptArray!(ubyte)*)&params[12];
	}
	static int GetSettingsDataInt(ref Settings.SettingsData Data)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = Data;
		StaticClass.ProcessEvent(Functions.GetSettingsDataInt, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		return *cast(int*)&params[12];
	}
	static float GetSettingsDataFloat(ref Settings.SettingsData Data)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = Data;
		StaticClass.ProcessEvent(Functions.GetSettingsDataFloat, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		return *cast(float*)&params[12];
	}
	static ScriptString GetSettingsDataString(ref Settings.SettingsData Data)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = Data;
		StaticClass.ProcessEvent(Functions.GetSettingsDataString, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		return *cast(ScriptString*)&params[12];
	}
	static void EmptySettingsData(ref Settings.SettingsData Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = Data;
		StaticClass.ProcessEvent(Functions.EmptySettingsData, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
	static void SetSettingsData(ref Settings.SettingsData Data, ref Settings.SettingsData Data2Copy)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = Data;
		*cast(Settings.SettingsData*)&params[12] = Data2Copy;
		StaticClass.ProcessEvent(Functions.SetSettingsData, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		*Data2Copy = *cast(Settings.SettingsData*)&params[12];
	}
	static void SetSettingsDataBlob(ref Settings.SettingsData Data, ref ScriptArray!(ubyte) InBlob)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = Data;
		*cast(ScriptArray!(ubyte)*)&params[12] = InBlob;
		StaticClass.ProcessEvent(Functions.SetSettingsDataBlob, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		*InBlob = *cast(ScriptArray!(ubyte)*)&params[12];
	}
	static void SetSettingsDataDateTime(ref Settings.SettingsData Data, int InInt1, int InInt2)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = Data;
		*cast(int*)&params[12] = InInt1;
		*cast(int*)&params[16] = InInt2;
		StaticClass.ProcessEvent(Functions.SetSettingsDataDateTime, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
	static void SetSettingsDataInt(ref Settings.SettingsData Data, int InInt)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = Data;
		*cast(int*)&params[12] = InInt;
		StaticClass.ProcessEvent(Functions.SetSettingsDataInt, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
	static void SetSettingsDataFloat(ref Settings.SettingsData Data, float InFloat)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = Data;
		*cast(float*)&params[12] = InFloat;
		StaticClass.ProcessEvent(Functions.SetSettingsDataFloat, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
	static void SetSettingsDataString(ref Settings.SettingsData Data, ScriptString InString)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = Data;
		*cast(ScriptString*)&params[12] = InString;
		StaticClass.ProcessEvent(Functions.SetSettingsDataString, params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
}
