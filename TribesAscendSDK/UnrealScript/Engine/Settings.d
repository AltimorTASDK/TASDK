module UnrealScript.Engine.Settings;

import ScriptClasses;
import UnrealScript.Engine.GameInfo;
import UnrealScript.Core.UObject;

extern(C++) interface Settings : UObject
{
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
		public @property final auto ref int Id() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Id[4];
		public @property final auto ref int ValueIndex() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __ValueIndex[4];
		public @property final auto ref Settings.EOnlineDataAdvertisementType AdvertisementType() { return *cast(Settings.EOnlineDataAdvertisementType*)(cast(size_t)&this + 8); }
		private ubyte __AdvertisementType[1];
	}
	struct SettingsProperty
	{
		public @property final auto ref int PropertyId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __PropertyId[4];
		public @property final auto ref Settings.SettingsData Data() { return *cast(Settings.SettingsData*)(cast(size_t)&this + 4); }
		private ubyte __Data[12];
		public @property final auto ref Settings.EOnlineDataAdvertisementType AdvertisementType() { return *cast(Settings.EOnlineDataAdvertisementType*)(cast(size_t)&this + 16); }
		private ubyte __AdvertisementType[1];
	}
	struct SettingsData
	{
		public @property final auto ref Settings.ESettingsDataType Type() { return *cast(Settings.ESettingsDataType*)(cast(size_t)&this + 0); }
		private ubyte __Type[1];
		public @property final auto ref int Value1() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Value1[4];
		public @property final auto ref UObject.Pointer Value2() { return *cast(UObject.Pointer*)(cast(size_t)&this + 8); }
		private ubyte __Value2[4];
	}
	struct IdToStringMapping
	{
		public @property final auto ref int Id() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Id[4];
		public @property final auto ref ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __Name[8];
	}
	struct LocalizedStringSettingMetaData
	{
		public @property final auto ref int Id() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Id[4];
		public @property final auto ref ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __Name[8];
		public @property final auto ref ScriptString ColumnHeaderText() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __ColumnHeaderText[12];
		public @property final auto ref ScriptArray!(Settings.StringIdToStringMapping) ValueMappings() { return *cast(ScriptArray!(Settings.StringIdToStringMapping)*)(cast(size_t)&this + 24); }
		private ubyte __ValueMappings[12];
	}
	struct StringIdToStringMapping
	{
		public @property final auto ref int Id() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Id[4];
		public @property final auto ref ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __Name[8];
		public @property final bool bIsWildcard() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bIsWildcard(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bIsWildcard[4];
	}
	struct SettingsPropertyPropertyMetaData
	{
		public @property final auto ref int Id() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Id[4];
		public @property final auto ref ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __Name[8];
		public @property final auto ref ScriptString ColumnHeaderText() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __ColumnHeaderText[12];
		public @property final auto ref Settings.EPropertyValueMappingType MappingType() { return *cast(Settings.EPropertyValueMappingType*)(cast(size_t)&this + 24); }
		private ubyte __MappingType[1];
		public @property final auto ref ScriptArray!(Settings.IdToStringMapping) ValueMappings() { return *cast(ScriptArray!(Settings.IdToStringMapping)*)(cast(size_t)&this + 28); }
		private ubyte __ValueMappings[12];
		public @property final auto ref ScriptArray!(Settings.SettingsData) PredefinedValues() { return *cast(ScriptArray!(Settings.SettingsData)*)(cast(size_t)&this + 40); }
		private ubyte __PredefinedValues[12];
		public @property final auto ref float MinVal() { return *cast(float*)(cast(size_t)&this + 52); }
		private ubyte __MinVal[4];
		public @property final auto ref float MaxVal() { return *cast(float*)(cast(size_t)&this + 56); }
		private ubyte __MaxVal[4];
		public @property final auto ref float RangeIncrement() { return *cast(float*)(cast(size_t)&this + 60); }
		private ubyte __RangeIncrement[4];
	}
	public @property final auto ref ScriptArray!(Settings.LocalizedStringSetting) LocalizedSettings() { return *cast(ScriptArray!(Settings.LocalizedStringSetting)*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptArray!(Settings.SettingsProperty) Properties() { return *cast(ScriptArray!(Settings.SettingsProperty)*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptArray!(Settings.LocalizedStringSettingMetaData) LocalizedSettingsMappings() { return *cast(ScriptArray!(Settings.LocalizedStringSettingMetaData)*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptArray!(Settings.SettingsPropertyPropertyMetaData) PropertyMappings() { return *cast(ScriptArray!(Settings.SettingsPropertyPropertyMetaData)*)(cast(size_t)cast(void*)this + 96); }
	final void UpdateFromURL(ScriptString* URL, GameInfo Game)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *URL;
		*cast(GameInfo*)&params[12] = Game;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5197], params.ptr, cast(void*)0);
		*URL = *cast(ScriptString*)params.ptr;
	}
	final void BuildURL(ScriptString* URL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *URL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5198], params.ptr, cast(void*)0);
		*URL = *cast(ScriptString*)params.ptr;
	}
	final void AppendContextsToURL(ScriptString* URL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *URL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5201], params.ptr, cast(void*)0);
		*URL = *cast(ScriptString*)params.ptr;
	}
	final void AppendPropertiesToURL(ScriptString* URL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *URL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5203], params.ptr, cast(void*)0);
		*URL = *cast(ScriptString*)params.ptr;
	}
	final void AppendDataBindingsToURL(ScriptString* URL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *URL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5205], params.ptr, cast(void*)0);
		*URL = *cast(ScriptString*)params.ptr;
	}
	final void GetQoSAdvertisedStringSettings(ScriptArray!(Settings.LocalizedStringSetting)* QoSSettings)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(Settings.LocalizedStringSetting)*)params.ptr = *QoSSettings;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5207], params.ptr, cast(void*)0);
		*QoSSettings = *cast(ScriptArray!(Settings.LocalizedStringSetting)*)params.ptr;
	}
	final void GetQoSAdvertisedProperties(ScriptArray!(Settings.SettingsProperty)* QoSProps)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(Settings.SettingsProperty)*)params.ptr = *QoSProps;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5209], params.ptr, cast(void*)0);
		*QoSProps = *cast(ScriptArray!(Settings.SettingsProperty)*)params.ptr;
	}
	final bool GetRangedPropertyValue(int PropertyId, float* OutValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(float*)&params[4] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5217], params.ptr, cast(void*)0);
		*OutValue = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	final bool SetRangedPropertyValue(int PropertyId, float NewValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(float*)&params[4] = NewValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5229], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool GetPropertyRange(int PropertyId, float* OutMinValue, float* OutMaxValue, float* RangeIncrement, ubyte* bFormatAsInt)
	{
		ubyte params[21];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(float*)&params[4] = *OutMinValue;
		*cast(float*)&params[8] = *OutMaxValue;
		*cast(float*)&params[12] = *RangeIncrement;
		params[16] = *bFormatAsInt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5233], params.ptr, cast(void*)0);
		*OutMinValue = *cast(float*)&params[4];
		*OutMaxValue = *cast(float*)&params[8];
		*RangeIncrement = *cast(float*)&params[12];
		*bFormatAsInt = params[16];
		return *cast(bool*)&params[20];
	}
	final bool GetPropertyMappingType(int PropertyId, Settings.EPropertyValueMappingType* OutType)
	{
		ubyte params[9];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(Settings.EPropertyValueMappingType*)&params[4] = *OutType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5237], params.ptr, cast(void*)0);
		*OutType = *cast(Settings.EPropertyValueMappingType*)&params[4];
		return *cast(bool*)&params[8];
	}
	final bool HasStringSetting(int SettingId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5244], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool HasProperty(int PropertyId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5250], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void UpdateProperties(ScriptArray!(Settings.SettingsProperty)* Props, bool bShouldAddIfMissing)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(Settings.SettingsProperty)*)params.ptr = *Props;
		*cast(bool*)&params[12] = bShouldAddIfMissing;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5253], params.ptr, cast(void*)0);
		*Props = *cast(ScriptArray!(Settings.SettingsProperty)*)params.ptr;
	}
	final void UpdateStringSettings(ScriptArray!(Settings.LocalizedStringSetting)* pSettings, bool bShouldAddIfMissing)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(Settings.LocalizedStringSetting)*)params.ptr = *pSettings;
		*cast(bool*)&params[12] = bShouldAddIfMissing;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5256], params.ptr, cast(void*)0);
		*pSettings = *cast(ScriptArray!(Settings.LocalizedStringSetting)*)params.ptr;
	}
	final Settings.ESettingsDataType GetPropertyType(int PropertyId)
	{
		ubyte params[5];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5260], params.ptr, cast(void*)0);
		return *cast(Settings.ESettingsDataType*)&params[4];
	}
	final bool GetPropertyValueId(int PropertyId, int* ValueId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(int*)&params[4] = *ValueId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5264], params.ptr, cast(void*)0);
		*ValueId = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	final bool SetPropertyValueId(int PropertyId, int ValueId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(int*)&params[4] = ValueId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5267], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool GetStringProperty(int PropertyId, ScriptString* Value)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(ScriptString*)&params[4] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5271], params.ptr, cast(void*)0);
		*Value = *cast(ScriptString*)&params[4];
		return *cast(bool*)&params[16];
	}
	final void SetStringProperty(int PropertyId, ScriptString Value)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(ScriptString*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5275], params.ptr, cast(void*)0);
	}
	final bool GetIntProperty(int PropertyId, int* Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(int*)&params[4] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5279], params.ptr, cast(void*)0);
		*Value = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	final void SetIntProperty(int PropertyId, int Value)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(int*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5282], params.ptr, cast(void*)0);
	}
	final bool GetFloatProperty(int PropertyId, float* Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(float*)&params[4] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5286], params.ptr, cast(void*)0);
		*Value = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	final void SetFloatProperty(int PropertyId, float Value)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		*cast(float*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5289], params.ptr, cast(void*)0);
	}
	final bool SetPropertyFromStringByName(ScriptName PropertyName, ScriptString* NewValue)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropertyName;
		*cast(ScriptString*)&params[8] = *NewValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5293], params.ptr, cast(void*)0);
		*NewValue = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	final ScriptString GetPropertyAsStringByName(ScriptName PropertyName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropertyName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5296], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	final ScriptString GetPropertyAsString(int PropertyId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5300], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final ScriptString GetPropertyColumnHeader(int PropertyId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5303], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final ScriptName GetPropertyName(int PropertyId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PropertyId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5306], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	final bool GetPropertyId(ScriptName PropertyName, int* PropertyId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PropertyName;
		*cast(int*)&params[8] = *PropertyId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5309], params.ptr, cast(void*)0);
		*PropertyId = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	final bool SetStringSettingValueFromStringByName(ScriptName StringSettingName, ScriptString* NewValue)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StringSettingName;
		*cast(ScriptString*)&params[8] = *NewValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5312], params.ptr, cast(void*)0);
		*NewValue = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	final ScriptName GetStringSettingValueNameByName(ScriptName StringSettingName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StringSettingName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5316], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	final ScriptName GetStringSettingValueName(int StringSettingId, int ValueIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		*cast(int*)&params[4] = ValueIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5320], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[8];
	}
	final bool IsWildcardStringSetting(int StringSettingId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5323], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final ScriptString GetStringSettingColumnHeader(int StringSettingId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5327], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final ScriptName GetStringSettingName(int StringSettingId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5330], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	final bool GetStringSettingId(ScriptName StringSettingName, int* StringSettingId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StringSettingName;
		*cast(int*)&params[8] = *StringSettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5333], params.ptr, cast(void*)0);
		*StringSettingId = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	final bool GetStringSettingValueByName(ScriptName StringSettingName, int* ValueIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StringSettingName;
		*cast(int*)&params[8] = *ValueIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5336], params.ptr, cast(void*)0);
		*ValueIndex = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	final void SetStringSettingValueByName(ScriptName StringSettingName, int ValueIndex, bool bShouldAutoAdd)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StringSettingName;
		*cast(int*)&params[8] = ValueIndex;
		*cast(bool*)&params[12] = bShouldAutoAdd;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5340], params.ptr, cast(void*)0);
	}
	final bool GetStringSettingValueNames(int StringSettingId, ScriptArray!(Settings.IdToStringMapping)* Values)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		*cast(ScriptArray!(Settings.IdToStringMapping)*)&params[4] = *Values;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5344], params.ptr, cast(void*)0);
		*Values = *cast(ScriptArray!(Settings.IdToStringMapping)*)&params[4];
		return *cast(bool*)&params[16];
	}
	final bool IncrementStringSettingValue(int StringSettingId, int Direction, bool bShouldWrap)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		*cast(int*)&params[4] = Direction;
		*cast(bool*)&params[8] = bShouldWrap;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5348], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool GetStringSettingValue(int StringSettingId, int* ValueIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		*cast(int*)&params[4] = *ValueIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5356], params.ptr, cast(void*)0);
		*ValueIndex = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	final void SetStringSettingValue(int StringSettingId, int ValueIndex, bool bShouldAutoAdd)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StringSettingId;
		*cast(int*)&params[4] = ValueIndex;
		*cast(bool*)&params[8] = bShouldAutoAdd;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5361], params.ptr, cast(void*)0);
	}
	final void GetSettingsDataDateTime(Settings.SettingsData* Data, int* OutInt1, int* OutInt2)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(int*)&params[12] = *OutInt1;
		*cast(int*)&params[16] = *OutInt2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5365], params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		*OutInt1 = *cast(int*)&params[12];
		*OutInt2 = *cast(int*)&params[16];
	}
	final void GetSettingsDataBlob(Settings.SettingsData* Data, ScriptArray!(ubyte)* OutBlob)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(ScriptArray!(ubyte)*)&params[12] = *OutBlob;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5369], params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		*OutBlob = *cast(ScriptArray!(ubyte)*)&params[12];
	}
	final int GetSettingsDataInt(Settings.SettingsData* Data)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5373], params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		return *cast(int*)&params[12];
	}
	final float GetSettingsDataFloat(Settings.SettingsData* Data)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5377], params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		return *cast(float*)&params[12];
	}
	final ScriptString GetSettingsDataString(Settings.SettingsData* Data)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5380], params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		return *cast(ScriptString*)&params[12];
	}
	final void EmptySettingsData(Settings.SettingsData* Data)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5383], params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
	final void SetSettingsData(Settings.SettingsData* Data, Settings.SettingsData* Data2Copy)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(Settings.SettingsData*)&params[12] = *Data2Copy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5386], params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		*Data2Copy = *cast(Settings.SettingsData*)&params[12];
	}
	final void SetSettingsDataBlob(Settings.SettingsData* Data, ScriptArray!(ubyte)* InBlob)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(ScriptArray!(ubyte)*)&params[12] = *InBlob;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5388], params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
		*InBlob = *cast(ScriptArray!(ubyte)*)&params[12];
	}
	final void SetSettingsDataDateTime(Settings.SettingsData* Data, int InInt1, int InInt2)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(int*)&params[12] = InInt1;
		*cast(int*)&params[16] = InInt2;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5391], params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
	final void SetSettingsDataInt(Settings.SettingsData* Data, int InInt)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(int*)&params[12] = InInt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5395], params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
	final void SetSettingsDataFloat(Settings.SettingsData* Data, float InFloat)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(float*)&params[12] = InFloat;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5399], params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
	final void SetSettingsDataString(Settings.SettingsData* Data, ScriptString InString)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Settings.SettingsData*)params.ptr = *Data;
		*cast(ScriptString*)&params[12] = InString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5402], params.ptr, cast(void*)0);
		*Data = *cast(Settings.SettingsData*)params.ptr;
	}
}
