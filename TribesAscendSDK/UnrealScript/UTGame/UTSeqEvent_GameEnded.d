module UnrealScript.UTGame.UTSeqEvent_GameEnded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Actor;

extern(C++) interface UTSeqEvent_GameEnded : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqEvent_GameEnded")()); }
	private static __gshared UTSeqEvent_GameEnded mDefaultProperties;
	@property final static UTSeqEvent_GameEnded DefaultProperties() { mixin(MGDPC!(UTSeqEvent_GameEnded, "UTSeqEvent_GameEnded UTGame.Default__UTSeqEvent_GameEnded")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mActivated;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction Activated() { mixin(MGF!("mActivated", "Function UTGame.UTSeqEvent_GameEnded.Activated")()); }
			ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function UTGame.UTSeqEvent_GameEnded.GetObjClassVersion")()); }
		}
	}
	@property final auto ref
	{
		Actor ActualWinner() { mixin(MGPC!(Actor, 260)()); }
		Actor Winner() { mixin(MGPC!(Actor, 256)()); }
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
