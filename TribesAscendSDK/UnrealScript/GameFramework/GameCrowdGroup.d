module UnrealScript.GameFramework.GameCrowdGroup;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.GameCrowdDestination;

extern(C++) interface GameCrowdGroup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdGroup")); }
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
			ScriptFunction AddMember() { return mAddMember ? mAddMember : (mAddMember = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdGroup.AddMember")); }
			ScriptFunction RemoveMember() { return mRemoveMember ? mRemoveMember : (mRemoveMember = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdGroup.RemoveMember")); }
			ScriptFunction UpdateDestinations() { return mUpdateDestinations ? mUpdateDestinations : (mUpdateDestinations = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdGroup.UpdateDestinations")); }
		}
	}
	@property final auto ref ScriptArray!(GameCrowdAgent) Members() { return *cast(ScriptArray!(GameCrowdAgent)*)(cast(size_t)cast(void*)this + 60); }
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
