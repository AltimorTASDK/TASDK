module UnrealScript.Engine.OnlineStatsWrite;

import ScriptClasses;
import UnrealScript.Engine.OnlineStats;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineStatsWrite : OnlineStats
{
	public @property final auto ref ScriptArray!(Settings.StringIdToStringMapping) StatMappings() { return *cast(ScriptArray!(Settings.StringIdToStringMapping)*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptArray!(Settings.SettingsProperty) Properties() { return *cast(ScriptArray!(Settings.SettingsProperty)*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptArray!(int) ViewIds() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptArray!(int) ArbitratedViewIds() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int RatingId() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
	final void OnStatsWriteComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22875], cast(void*)0, cast(void*)0);
	}
	final bool GetStatId(ScriptName StatName, int* StatId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StatName;
		*cast(int*)&params[8] = *StatId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22877], params.ptr, cast(void*)0);
		*StatId = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	final ScriptName GetStatName(int StatId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22881], params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	final void SetFloatStat(int StatId, float Value)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		*cast(float*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22884], params.ptr, cast(void*)0);
	}
	final void SetIntStat(int StatId, int Value)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		*cast(int*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22887], params.ptr, cast(void*)0);
	}
	final void IncrementFloatStat(int StatId, float IncBy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		*cast(float*)&params[4] = IncBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22890], params.ptr, cast(void*)0);
	}
	final void IncrementIntStat(int StatId, int IncBy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		*cast(int*)&params[4] = IncBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22893], params.ptr, cast(void*)0);
	}
	final void DecrementFloatStat(int StatId, float DecBy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		*cast(float*)&params[4] = DecBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22896], params.ptr, cast(void*)0);
	}
	final void DecrementIntStat(int StatId, int DecBy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		*cast(int*)&params[4] = DecBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[22899], params.ptr, cast(void*)0);
	}
}
