module UnrealScript.UTGame.UTSeqAct_AddNamedBot;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTSeqAct_AddNamedBot : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_AddNamedBot")); }
	private static __gshared UTSeqAct_AddNamedBot mDefaultProperties;
	@property final static UTSeqAct_AddNamedBot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqAct_AddNamedBot)("UTSeqAct_AddNamedBot UTGame.Default__UTSeqAct_AddNamedBot")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mActivated;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqAct_AddNamedBot.Activated")); }
			ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSeqAct_AddNamedBot.GetObjClassVersion")); }
		}
	}
	@property final
	{
		auto ref
		{
			UTBot SpawnedBot() { return *cast(UTBot*)(cast(size_t)cast(void*)this + 256); }
			NavigationPoint StartSpot() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 252); }
			int TeamIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 248); }
			ScriptString BotName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
		}
		bool bForceTeam() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
		bool bForceTeam(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
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
