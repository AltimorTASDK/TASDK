module UnrealScript.UTGame.UTCTFTeamAI;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTTeamAI;
import UnrealScript.UTGame.UTCTFFlag;
import UnrealScript.UTGame.UTSquadAI;
import UnrealScript.UTGame.UTGameObjective;

extern(C++) interface UTCTFTeamAI : UTTeamAI
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTCTFTeamAI")()); }
	private static __gshared UTCTFTeamAI mDefaultProperties;
	@property final static UTCTFTeamAI DefaultProperties() { mixin(MGDPC!(UTCTFTeamAI, "UTCTFTeamAI UTGame.Default__UTCTFTeamAI")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddSquadWithLeader;
			ScriptFunction mGetPriorityFreelanceObjectiveFor;
		}
		public @property static final
		{
			ScriptFunction AddSquadWithLeader() { mixin(MGF!("mAddSquadWithLeader", "Function UTGame.UTCTFTeamAI.AddSquadWithLeader")()); }
			ScriptFunction GetPriorityFreelanceObjectiveFor() { mixin(MGF!("mGetPriorityFreelanceObjectiveFor", "Function UTGame.UTCTFTeamAI.GetPriorityFreelanceObjectiveFor")()); }
		}
	}
	@property final auto ref
	{
		UTCTFFlag FriendlyFlag() { mixin(MGPC!("UTCTFFlag", 668)()); }
		UTCTFFlag EnemyFlag() { mixin(MGPC!("UTCTFFlag", 672)()); }
		float LastGotFlag() { mixin(MGPC!("float", 676)()); }
	}
final:
	UTSquadAI AddSquadWithLeader(Controller C, UTGameObjective O)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		*cast(UTGameObjective*)&params[4] = O;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSquadWithLeader, params.ptr, cast(void*)0);
		return *cast(UTSquadAI*)&params[8];
	}
	UTGameObjective GetPriorityFreelanceObjectiveFor(UTSquadAI InFreelanceSquad)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTSquadAI*)params.ptr = InFreelanceSquad;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPriorityFreelanceObjectiveFor, params.ptr, cast(void*)0);
		return *cast(UTGameObjective*)&params[4];
	}
}
