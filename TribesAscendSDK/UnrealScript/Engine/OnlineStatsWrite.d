module UnrealScript.Engine.OnlineStatsWrite;

import ScriptClasses;
import UnrealScript.Engine.OnlineStats;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineStatsWrite : OnlineStats
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineStatsWrite")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnStatsWriteComplete;
			ScriptFunction mGetStatId;
			ScriptFunction mGetStatName;
			ScriptFunction mSetFloatStat;
			ScriptFunction mSetIntStat;
			ScriptFunction mIncrementFloatStat;
			ScriptFunction mIncrementIntStat;
			ScriptFunction mDecrementFloatStat;
			ScriptFunction mDecrementIntStat;
		}
		public @property static final
		{
			ScriptFunction OnStatsWriteComplete() { return mOnStatsWriteComplete ? mOnStatsWriteComplete : (mOnStatsWriteComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsWrite.OnStatsWriteComplete")); }
			ScriptFunction GetStatId() { return mGetStatId ? mGetStatId : (mGetStatId = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsWrite.GetStatId")); }
			ScriptFunction GetStatName() { return mGetStatName ? mGetStatName : (mGetStatName = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsWrite.GetStatName")); }
			ScriptFunction SetFloatStat() { return mSetFloatStat ? mSetFloatStat : (mSetFloatStat = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsWrite.SetFloatStat")); }
			ScriptFunction SetIntStat() { return mSetIntStat ? mSetIntStat : (mSetIntStat = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsWrite.SetIntStat")); }
			ScriptFunction IncrementFloatStat() { return mIncrementFloatStat ? mIncrementFloatStat : (mIncrementFloatStat = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsWrite.IncrementFloatStat")); }
			ScriptFunction IncrementIntStat() { return mIncrementIntStat ? mIncrementIntStat : (mIncrementIntStat = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsWrite.IncrementIntStat")); }
			ScriptFunction DecrementFloatStat() { return mDecrementFloatStat ? mDecrementFloatStat : (mDecrementFloatStat = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsWrite.DecrementFloatStat")); }
			ScriptFunction DecrementIntStat() { return mDecrementIntStat ? mDecrementIntStat : (mDecrementIntStat = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineStatsWrite.DecrementIntStat")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Settings.StringIdToStringMapping) StatMappings() { return *cast(ScriptArray!(Settings.StringIdToStringMapping)*)(cast(size_t)cast(void*)this + 72); }
		ScriptArray!(Settings.SettingsProperty) Properties() { return *cast(ScriptArray!(Settings.SettingsProperty)*)(cast(size_t)cast(void*)this + 84); }
		ScriptArray!(int) ViewIds() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 96); }
		ScriptArray!(int) ArbitratedViewIds() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 108); }
		int RatingId() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
	}
final:
	void OnStatsWriteComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStatsWriteComplete, cast(void*)0, cast(void*)0);
	}
	bool GetStatId(ScriptName StatName, int* StatId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StatName;
		*cast(int*)&params[8] = *StatId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStatId, params.ptr, cast(void*)0);
		*StatId = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	ScriptName GetStatName(int StatId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStatName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)&params[4];
	}
	void SetFloatStat(int StatId, float Value)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		*cast(float*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFloatStat, params.ptr, cast(void*)0);
	}
	void SetIntStat(int StatId, int Value)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		*cast(int*)&params[4] = Value;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetIntStat, params.ptr, cast(void*)0);
	}
	void IncrementFloatStat(int StatId, float IncBy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		*cast(float*)&params[4] = IncBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementFloatStat, params.ptr, cast(void*)0);
	}
	void IncrementIntStat(int StatId, int IncBy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		*cast(int*)&params[4] = IncBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementIntStat, params.ptr, cast(void*)0);
	}
	void DecrementFloatStat(int StatId, float DecBy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		*cast(float*)&params[4] = DecBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.DecrementFloatStat, params.ptr, cast(void*)0);
	}
	void DecrementIntStat(int StatId, int DecBy)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		*cast(int*)&params[4] = DecBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.DecrementIntStat, params.ptr, cast(void*)0);
	}
}
