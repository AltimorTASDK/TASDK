module UnrealScript.UTGame.UTSeqEvent_GameEnded;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Actor;

extern(C++) interface UTSeqEvent_GameEnded : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqEvent_GameEnded")); }
	private static __gshared UTSeqEvent_GameEnded mDefaultProperties;
	@property final static UTSeqEvent_GameEnded DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqEvent_GameEnded)("UTSeqEvent_GameEnded UTGame.Default__UTSeqEvent_GameEnded")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mActivated;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqEvent_GameEnded.Activated")); }
			ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqEvent_GameEnded.GetObjClassVersion")); }
		}
	}
	@property final auto ref
	{
		Actor ActualWinner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 260); }
		Actor Winner() { return *cast(Actor*)(cast(size_t)cast(void*)this + 256); }
	}
final:
	void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
