module UnrealScript.Engine.GameplayEventsHandler;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.GameplayEventsReader;
import UnrealScript.Engine.GameplayEvents;

extern(C++) interface GameplayEventsHandler : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.GameplayEventsHandler")); }
	private static __gshared GameplayEventsHandler mDefaultProperties;
	@property final static GameplayEventsHandler DefaultProperties() { mixin(MGDPC("GameplayEventsHandler", "GameplayEventsHandler Engine.Default__GameplayEventsHandler")); }
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
			ScriptFunction SetReader() { mixin(MGF("mSetReader", "Function Engine.GameplayEventsHandler.SetReader")); }
			ScriptFunction PreProcessStream() { mixin(MGF("mPreProcessStream", "Function Engine.GameplayEventsHandler.PreProcessStream")); }
			ScriptFunction PostProcessStream() { mixin(MGF("mPostProcessStream", "Function Engine.GameplayEventsHandler.PostProcessStream")); }
			ScriptFunction ResolveGroupFilters() { mixin(MGF("mResolveGroupFilters", "Function Engine.GameplayEventsHandler.ResolveGroupFilters")); }
			ScriptFunction AddFilter() { mixin(MGF("mAddFilter", "Function Engine.GameplayEventsHandler.AddFilter")); }
			ScriptFunction RemoveFilter() { mixin(MGF("mRemoveFilter", "Function Engine.GameplayEventsHandler.RemoveFilter")); }
			ScriptFunction IsEventFiltered() { mixin(MGF("mIsEventFiltered", "Function Engine.GameplayEventsHandler.IsEventFiltered")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(int) EventIDFilter() { mixin(MGPC("ScriptArray!(int)", 60)); }
		ScriptArray!(GameplayEvents.GameStatGroup) GroupFilter() { mixin(MGPC("ScriptArray!(GameplayEvents.GameStatGroup)", 72)); }
		GameplayEventsReader Reader() { mixin(MGPC("GameplayEventsReader", 84)); }
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
