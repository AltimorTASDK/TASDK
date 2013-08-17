module UnrealScript.Engine.OnlineStatsWrite;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineStats;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineStatsWrite : OnlineStats
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlineStatsWrite")()); }
	private static __gshared OnlineStatsWrite mDefaultProperties;
	@property final static OnlineStatsWrite DefaultProperties() { mixin(MGDPC!(OnlineStatsWrite, "OnlineStatsWrite Engine.Default__OnlineStatsWrite")()); }
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
			ScriptFunction OnStatsWriteComplete() { mixin(MGF!("mOnStatsWriteComplete", "Function Engine.OnlineStatsWrite.OnStatsWriteComplete")()); }
			ScriptFunction GetStatId() { mixin(MGF!("mGetStatId", "Function Engine.OnlineStatsWrite.GetStatId")()); }
			ScriptFunction GetStatName() { mixin(MGF!("mGetStatName", "Function Engine.OnlineStatsWrite.GetStatName")()); }
			ScriptFunction SetFloatStat() { mixin(MGF!("mSetFloatStat", "Function Engine.OnlineStatsWrite.SetFloatStat")()); }
			ScriptFunction SetIntStat() { mixin(MGF!("mSetIntStat", "Function Engine.OnlineStatsWrite.SetIntStat")()); }
			ScriptFunction IncrementFloatStat() { mixin(MGF!("mIncrementFloatStat", "Function Engine.OnlineStatsWrite.IncrementFloatStat")()); }
			ScriptFunction IncrementIntStat() { mixin(MGF!("mIncrementIntStat", "Function Engine.OnlineStatsWrite.IncrementIntStat")()); }
			ScriptFunction DecrementFloatStat() { mixin(MGF!("mDecrementFloatStat", "Function Engine.OnlineStatsWrite.DecrementFloatStat")()); }
			ScriptFunction DecrementIntStat() { mixin(MGF!("mDecrementIntStat", "Function Engine.OnlineStatsWrite.DecrementIntStat")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Settings.StringIdToStringMapping) StatMappings() { mixin(MGPC!("ScriptArray!(Settings.StringIdToStringMapping)", 72)()); }
		ScriptArray!(Settings.SettingsProperty) Properties() { mixin(MGPC!("ScriptArray!(Settings.SettingsProperty)", 84)()); }
		ScriptArray!(int) ViewIds() { mixin(MGPC!("ScriptArray!(int)", 96)()); }
		ScriptArray!(int) ArbitratedViewIds() { mixin(MGPC!("ScriptArray!(int)", 108)()); }
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnStatsWriteComplete__Delegate'!
		int RatingId() { mixin(MGPC!("int", 120)()); }
	}
final:
	void OnStatsWriteComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStatsWriteComplete, cast(void*)0, cast(void*)0);
	}
	bool GetStatId(ScriptName StatName, ref int StatId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = StatName;
		*cast(int*)&params[8] = StatId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStatId, params.ptr, cast(void*)0);
		StatId = *cast(int*)&params[8];
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
	void IncrementFloatStat(int StatId, float* IncBy = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		if (IncBy !is null)
			*cast(float*)&params[4] = *IncBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementFloatStat, params.ptr, cast(void*)0);
	}
	void IncrementIntStat(int StatId, int* IncBy = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		if (IncBy !is null)
			*cast(int*)&params[4] = *IncBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.IncrementIntStat, params.ptr, cast(void*)0);
	}
	void DecrementFloatStat(int StatId, float* DecBy = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		if (DecBy !is null)
			*cast(float*)&params[4] = *DecBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.DecrementFloatStat, params.ptr, cast(void*)0);
	}
	void DecrementIntStat(int StatId, int* DecBy = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = StatId;
		if (DecBy !is null)
			*cast(int*)&params[4] = *DecBy;
		(cast(ScriptObject)this).ProcessEvent(Functions.DecrementIntStat, params.ptr, cast(void*)0);
	}
}
