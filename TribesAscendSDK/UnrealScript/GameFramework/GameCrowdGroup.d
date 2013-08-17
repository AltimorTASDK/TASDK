module UnrealScript.GameFramework.GameCrowdGroup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.GameCrowdDestination;

extern(C++) interface GameCrowdGroup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameCrowdGroup")()); }
	private static __gshared GameCrowdGroup mDefaultProperties;
	@property final static GameCrowdGroup DefaultProperties() { mixin(MGDPC!(GameCrowdGroup, "GameCrowdGroup GameFramework.Default__GameCrowdGroup")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddMember;
			ScriptFunction mRemoveMember;
			ScriptFunction mUpdateDestinations;
		}
		public @property static final
		{
			ScriptFunction AddMember() { mixin(MGF!("mAddMember", "Function GameFramework.GameCrowdGroup.AddMember")()); }
			ScriptFunction RemoveMember() { mixin(MGF!("mRemoveMember", "Function GameFramework.GameCrowdGroup.RemoveMember")()); }
			ScriptFunction UpdateDestinations() { mixin(MGF!("mUpdateDestinations", "Function GameFramework.GameCrowdGroup.UpdateDestinations")()); }
		}
	}
	@property final auto ref ScriptArray!(GameCrowdAgent) Members() { mixin(MGPC!("ScriptArray!(GameCrowdAgent)", 60)()); }
final:
	void AddMember(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMember, params.ptr, cast(void*)0);
	}
	void RemoveMember(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveMember, params.ptr, cast(void*)0);
	}
	void UpdateDestinations(GameCrowdDestination NewDestination)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = NewDestination;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateDestinations, params.ptr, cast(void*)0);
	}
}
