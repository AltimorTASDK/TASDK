module UnrealScript.Engine.OnlinePlayerStorage;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlinePlayerStorage : UObject
{
	enum EOnlineProfilePropertyOwner : ubyte
	{
		OPPO_None = 0,
		OPPO_OnlineService = 1,
		OPPO_Game = 2,
		OPPO_MAX = 3,
	}
	enum EOnlinePlayerStorageAsyncState : ubyte
	{
		OPAS_None = 0,
		OPAS_Read = 1,
		OPAS_Write = 2,
		OPAS_MAX = 3,
	}
	struct OnlineProfileSetting
	{
		public @property final auto ref Settings.SettingsProperty ProfileSetting() { return *cast(Settings.SettingsProperty*)(cast(size_t)&this + 4); }
		private ubyte __ProfileSetting[20];
		public @property final auto ref OnlinePlayerStorage.EOnlineProfilePropertyOwner Owner() { return *cast(OnlinePlayerStorage.EOnlineProfilePropertyOwner*)(cast(size_t)&this + 0); }
		private ubyte __Owner[1];
	}
	public @property final auto ref ScriptArray!(OnlinePlayerStorage.OnlineProfileSetting) ProfileSettings() { return *cast(ScriptArray!(OnlinePlayerStorage.OnlineProfileSetting)*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref ScriptArray!(Settings.SettingsPropertyPropertyMetaData) ProfileMappings() { return *cast(ScriptArray!(Settings.SettingsPropertyPropertyMetaData)*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref int DeviceID() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref OnlinePlayerStorage.EOnlinePlayerStorageAsyncState AsyncState() { return *cast(OnlinePlayerStorage.EOnlinePlayerStorageAsyncState*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref int VersionNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref int VersionSettingsId() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	final bool GetProfileSettingId(ScriptName ProfileSettingName, int* ProfileSettingId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileSettingName;
		*cast(int*)&params[8] = *ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22410], params.ptr, cast(void*)0);
		*ProfileSettingId = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	final ScriptName GetProfileSettingName(int ProfileSettingId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22414], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	final ScriptString GetProfileSettingColumnHeader(int ProfileSettingId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22417], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final int FindProfileSettingIndex(int ProfileSettingId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22420], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int FindProfileMappingIndex(int ProfileSettingId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22423], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int FindProfileMappingIndexByName(ScriptName ProfileSettingName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileSettingName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22426], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int FindDefaultProfileMappingIndexByName(ScriptName ProfileSettingName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileSettingName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22429], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final bool IsProfileSettingIdMapped(int ProfileSettingId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22432], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool GetProfileSettingValue(int ProfileSettingId, ScriptString* Value, int ValueMapID)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(ScriptString*)&params[4] = *Value;
		*cast(int*)&params[16] = ValueMapID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22435], params.ptr, cast(void*)0);
		*Value = *cast(ScriptString*)&params[4];
		return *cast(bool*)&params[20];
	}
	final ScriptName GetProfileSettingValueName(int ProfileSettingId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22440], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	final bool GetProfileSettingValues(int ProfileSettingId, ScriptArray!(ScriptName)* Values)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(ScriptArray!(ScriptName)*)&params[4] = *Values;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22443], params.ptr, cast(void*)0);
		*Values = *cast(ScriptArray!(ScriptName)*)&params[4];
		return *cast(bool*)&params[16];
	}
	final bool GetProfileSettingValueByName(ScriptName ProfileSettingName, ScriptString* Value)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileSettingName;
		*cast(ScriptString*)&params[8] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22448], params.ptr, cast(void*)0);
		*Value = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	final bool SetProfileSettingValueByName(ScriptName ProfileSettingName, ScriptString* NewValue)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ProfileSettingName;
		*cast(ScriptString*)&params[8] = *NewValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22452], params.ptr, cast(void*)0);
		*NewValue = *cast(ScriptString*)&params[8];
		return *cast(bool*)&params[20];
	}
	final bool SetProfileSettingValue(int ProfileSettingId, ScriptString* NewValue)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(ScriptString*)&params[4] = *NewValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22456], params.ptr, cast(void*)0);
		*NewValue = *cast(ScriptString*)&params[4];
		return *cast(bool*)&params[16];
	}
	final bool GetProfileSettingValueId(int ProfileSettingId, int* ValueId, int* ListIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = *ValueId;
		*cast(int*)&params[8] = *ListIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22460], params.ptr, cast(void*)0);
		*ValueId = *cast(int*)&params[4];
		*ListIndex = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	final bool GetProfileSettingValueFromListIndex(int ProfileSettingId, int ListIndex, int* Value)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = ListIndex;
		*cast(int*)&params[8] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22465], params.ptr, cast(void*)0);
		*Value = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	final bool GetProfileSettingValueInt(int ProfileSettingId, int* Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22470], params.ptr, cast(void*)0);
		*Value = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	final bool GetProfileSettingValueFloat(int ProfileSettingId, float* Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(float*)&params[4] = *Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22474], params.ptr, cast(void*)0);
		*Value = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	final bool SetProfileSettingValueId(int ProfileSettingId, int Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22478], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool SetProfileSettingValueInt(int ProfileSettingId, int Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22482], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool SetProfileSettingValueFloat(int ProfileSettingId, float Value)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(float*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22486], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool GetProfileSettingMappingType(int ProfileId, Settings.EPropertyValueMappingType* OutType)
	{
		ubyte params[9];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		*cast(Settings.EPropertyValueMappingType*)&params[4] = *OutType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22490], params.ptr, cast(void*)0);
		*OutType = *cast(Settings.EPropertyValueMappingType*)&params[4];
		return *cast(bool*)&params[8];
	}
	final bool GetProfileSettingMappingIds(int ProfileId, ScriptArray!(int)* Ids)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		*cast(ScriptArray!(int)*)&params[4] = *Ids;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22494], params.ptr, cast(void*)0);
		*Ids = *cast(ScriptArray!(int)*)&params[4];
		return *cast(bool*)&params[16];
	}
	final bool GetProfileSettingRange(int ProfileId, float* OutMinValue, float* OutMaxValue, float* RangeIncrement, ubyte* bFormatAsInt)
	{
		ubyte params[21];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		*cast(float*)&params[4] = *OutMinValue;
		*cast(float*)&params[8] = *OutMaxValue;
		*cast(float*)&params[12] = *RangeIncrement;
		params[16] = *bFormatAsInt;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22499], params.ptr, cast(void*)0);
		*OutMinValue = *cast(float*)&params[4];
		*OutMaxValue = *cast(float*)&params[8];
		*RangeIncrement = *cast(float*)&params[12];
		*bFormatAsInt = params[16];
		return *cast(bool*)&params[20];
	}
	final bool SetRangedProfileSettingValue(int ProfileId, float NewValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		*cast(float*)&params[4] = NewValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22506], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool GetRangedProfileSettingValue(int ProfileId, float* OutValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		*cast(float*)&params[4] = *OutValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22510], params.ptr, cast(void*)0);
		*OutValue = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	final void AddSettingInt(int SettingId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22514], params.ptr, cast(void*)0);
	}
	final void AddSettingFloat(int SettingId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22516], params.ptr, cast(void*)0);
	}
	final void SetToDefaults()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22518], cast(void*)0, cast(void*)0);
	}
	final void AppendVersionToSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22519], cast(void*)0, cast(void*)0);
	}
	final int GetVersionNumber()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22520], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void SetDefaultVersionNumber()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22522], cast(void*)0, cast(void*)0);
	}
}
