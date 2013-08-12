module UnrealScript.Engine.GameplayEventsReader;

import ScriptClasses;
import UnrealScript.Engine.GameplayEvents;
import UnrealScript.Engine.GameplayEventsHandler;

extern(C++) interface GameplayEventsReader : GameplayEvents
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.GameplayEventsReader")); }
	private static __gshared GameplayEventsReader mDefaultProperties;
	@property final static GameplayEventsReader DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameplayEventsReader)("GameplayEventsReader Engine.Default__GameplayEventsReader")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOpenStatsFile;
			ScriptFunction mCloseStatsFile;
			ScriptFunction mSerializeHeader;
			ScriptFunction mRegisterHandler;
			ScriptFunction mUnregisterHandler;
			ScriptFunction mProcessStreamStart;
			ScriptFunction mProcessStream;
			ScriptFunction mProcessStreamEnd;
			ScriptFunction mGetSessionID;
			ScriptFunction mGetTitleID;
			ScriptFunction mGetPlatform;
			ScriptFunction mGetSessionTimestamp;
			ScriptFunction mGetSessionStart;
			ScriptFunction mGetSessionEnd;
			ScriptFunction mGetSessionDuration;
		}
		public @property static final
		{
			ScriptFunction OpenStatsFile() { return mOpenStatsFile ? mOpenStatsFile : (mOpenStatsFile = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.OpenStatsFile")); }
			ScriptFunction CloseStatsFile() { return mCloseStatsFile ? mCloseStatsFile : (mCloseStatsFile = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.CloseStatsFile")); }
			ScriptFunction SerializeHeader() { return mSerializeHeader ? mSerializeHeader : (mSerializeHeader = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.SerializeHeader")); }
			ScriptFunction RegisterHandler() { return mRegisterHandler ? mRegisterHandler : (mRegisterHandler = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.RegisterHandler")); }
			ScriptFunction UnregisterHandler() { return mUnregisterHandler ? mUnregisterHandler : (mUnregisterHandler = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.UnregisterHandler")); }
			ScriptFunction ProcessStreamStart() { return mProcessStreamStart ? mProcessStreamStart : (mProcessStreamStart = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.ProcessStreamStart")); }
			ScriptFunction ProcessStream() { return mProcessStream ? mProcessStream : (mProcessStream = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.ProcessStream")); }
			ScriptFunction ProcessStreamEnd() { return mProcessStreamEnd ? mProcessStreamEnd : (mProcessStreamEnd = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.ProcessStreamEnd")); }
			ScriptFunction GetSessionID() { return mGetSessionID ? mGetSessionID : (mGetSessionID = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.GetSessionID")); }
			ScriptFunction GetTitleID() { return mGetTitleID ? mGetTitleID : (mGetTitleID = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.GetTitleID")); }
			ScriptFunction GetPlatform() { return mGetPlatform ? mGetPlatform : (mGetPlatform = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.GetPlatform")); }
			ScriptFunction GetSessionTimestamp() { return mGetSessionTimestamp ? mGetSessionTimestamp : (mGetSessionTimestamp = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.GetSessionTimestamp")); }
			ScriptFunction GetSessionStart() { return mGetSessionStart ? mGetSessionStart : (mGetSessionStart = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.GetSessionStart")); }
			ScriptFunction GetSessionEnd() { return mGetSessionEnd ? mGetSessionEnd : (mGetSessionEnd = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.GetSessionEnd")); }
			ScriptFunction GetSessionDuration() { return mGetSessionDuration ? mGetSessionDuration : (mGetSessionDuration = ScriptObject.Find!(ScriptFunction)("Function Engine.GameplayEventsReader.GetSessionDuration")); }
		}
	}
	@property final auto ref ScriptArray!(GameplayEventsHandler) RegisteredHandlers() { return *cast(ScriptArray!(GameplayEventsHandler)*)(cast(size_t)cast(void*)this + 336); }
final:
	bool OpenStatsFile(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenStatsFile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void CloseStatsFile()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseStatsFile, cast(void*)0, cast(void*)0);
	}
	bool SerializeHeader()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SerializeHeader, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RegisterHandler(GameplayEventsHandler NewHandler)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameplayEventsHandler*)params.ptr = NewHandler;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterHandler, params.ptr, cast(void*)0);
	}
	void UnregisterHandler(GameplayEventsHandler ExistingHandler)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameplayEventsHandler*)params.ptr = ExistingHandler;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnregisterHandler, params.ptr, cast(void*)0);
	}
	void ProcessStreamStart()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessStreamStart, cast(void*)0, cast(void*)0);
	}
	void ProcessStream()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessStream, cast(void*)0, cast(void*)0);
	}
	void ProcessStreamEnd()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessStreamEnd, cast(void*)0, cast(void*)0);
	}
	ScriptString GetSessionID()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSessionID, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	int GetTitleID()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTitleID, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetPlatform()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlatform, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptString GetSessionTimestamp()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSessionTimestamp, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	float GetSessionStart()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSessionStart, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetSessionEnd()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSessionEnd, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetSessionDuration()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSessionDuration, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}
