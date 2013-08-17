module UnrealScript.UTGame.UTSeqAct_AddNamedBot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTSeqAct_AddNamedBot : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSeqAct_AddNamedBot")()); }
	private static __gshared UTSeqAct_AddNamedBot mDefaultProperties;
	@property final static UTSeqAct_AddNamedBot DefaultProperties() { mixin(MGDPC!(UTSeqAct_AddNamedBot, "UTSeqAct_AddNamedBot UTGame.Default__UTSeqAct_AddNamedBot")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mActivated;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction Activated() { mixin(MGF!("mActivated", "Function UTGame.UTSeqAct_AddNamedBot.Activated")()); }
			ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function UTGame.UTSeqAct_AddNamedBot.GetObjClassVersion")()); }
		}
	}
	@property final
	{
		auto ref
		{
			UTBot SpawnedBot() { mixin(MGPC!(UTBot, 256)()); }
			NavigationPoint StartSpot() { mixin(MGPC!(NavigationPoint, 252)()); }
			int TeamIndex() { mixin(MGPC!(int, 248)()); }
			ScriptString BotName() { mixin(MGPC!(ScriptString, 232)()); }
		}
		bool bForceTeam() { mixin(MGBPC!(244, 0x1)()); }
		bool bForceTeam(bool val) { mixin(MSBPC!(244, 0x1)()); }
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
