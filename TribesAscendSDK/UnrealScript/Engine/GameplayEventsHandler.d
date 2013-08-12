module UnrealScript.Engine.GameplayEventsHandler;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.GameplayEventsReader;
import UnrealScript.Engine.GameplayEvents;

extern(C++) interface GameplayEventsHandler : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.GameplayEventsHandler")); }
	private static __gshared GameplayEventsHandler mDefaultProperties;
	@property final static GameplayEventsHandler DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameplayEventsHandler)("GameplayEventsHandler Engine.Default__GameplayEventsHandler")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetReader;
			ScriptFunction mPreProcessStream;
			ScriptFunction mPostProcessStream;
			ScriptFunction mResolveGroupFilters;
			ScriptFunction mAddFilter;
			ScriptFunction mRemoveFilter;
			ScriptFunction mIsEventFiltered;
		}
		public @property static final
		{
			ScriptFunction SetReader() { return mSetReader ? mSetReader : (mSetReader = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsHandler.SetReader")); }
			ScriptFunction PreProcessStream() { return mPreProcessStream ? mPreProcessStream : (mPreProcessStream = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsHandler.PreProcessStream")); }
			ScriptFunction PostProcessStream() { return mPostProcessStream ? mPostProcessStream : (mPostProcessStream = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsHandler.PostProcessStream")); }
			ScriptFunction ResolveGroupFilters() { return mResolveGroupFilters ? mResolveGroupFilters : (mResolveGroupFilters = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsHandler.ResolveGroupFilters")); }
			ScriptFunction AddFilter() { return mAddFilter ? mAddFilter : (mAddFilter = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsHandler.AddFilter")); }
			ScriptFunction RemoveFilter() { return mRemoveFilter ? mRemoveFilter : (mRemoveFilter = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsHandler.RemoveFilter")); }
			ScriptFunction IsEventFiltered() { return mIsEventFiltered ? mIsEventFiltered : (mIsEventFiltered = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsHandler.IsEventFiltered")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(int) EventIDFilter() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 60); }
		ScriptArray!(GameplayEvents.GameStatGroup) GroupFilter() { return *cast(ScriptArray!(GameplayEvents.GameStatGroup)*)(cast(size_t)cast(void*)this + 72); }
		GameplayEventsReader Reader() { return *cast(GameplayEventsReader*)(cast(size_t)cast(void*)this + 84); }
	}
final:
	void SetReader(GameplayEventsReader NewReader)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameplayEventsReader*)params.ptr = NewReader;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetReader, params.ptr, cast(void*)0);
	}
	void PreProcessStream()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreProcessStream, cast(void*)0, cast(void*)0);
	}
	void PostProcessStream()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostProcessStream, cast(void*)0, cast(void*)0);
	}
	void ResolveGroupFilters()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResolveGroupFilters, cast(void*)0, cast(void*)0);
	}
	void AddFilter(int EventID)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddFilter, params.ptr, cast(void*)0);
	}
	void RemoveFilter(int EventID)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveFilter, params.ptr, cast(void*)0);
	}
	bool IsEventFiltered(int EventID)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = EventID;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsEventFiltered, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
