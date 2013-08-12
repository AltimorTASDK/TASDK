module UnrealScript.GameFramework.SeqAct_GameCrowdPopulationManagerToggle;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowd_ListOfAgents;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GameCrowdPopulationManagerToggle : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqAct_GameCrowdPopulationManagerToggle")); }
	private static __gshared SeqAct_GameCrowdPopulationManagerToggle mDefaultProperties;
	@property final static SeqAct_GameCrowdPopulationManagerToggle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_GameCrowdPopulationManagerToggle)("SeqAct_GameCrowdPopulationManagerToggle GameFramework.Default__SeqAct_GameCrowdPopulationManagerToggle")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFindPopMgrTarget;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction FindPopMgrTarget() { return mFindPopMgrTarget ? mFindPopMgrTarget : (mFindPopMgrTarget = ScriptObject.Find!(ScriptFunction)("Function GameFramework.SeqAct_GameCrowdPopulationManagerToggle.FindPopMgrTarget")); }
			ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function GameFramework.SeqAct_GameCrowdPopulationManagerToggle.GetObjClassVersion")); }
		}
	}
	@property final
	{
		auto ref
		{
			float WarmupPct() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
			GameCrowd_ListOfAgents CrowdAgentList() { return *cast(GameCrowd_ListOfAgents*)(cast(size_t)cast(void*)this + 240); }
			float MaxSimulationDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			float SpawnRate() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			int MaxAgents() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
			ScriptClass PopulationManagerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 256); }
		}
		bool bClearOldArchetypes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
		bool bClearOldArchetypes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
		bool bCastShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x8) != 0; }
		bool bCastShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x8; } return val; }
		bool bEnableCrowdLightEnvironment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4) != 0; }
		bool bEnableCrowdLightEnvironment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4; } return val; }
		bool bKillAgentsInstantly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bKillAgentsInstantly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	}
final:
	void FindPopMgrTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPopMgrTarget, cast(void*)0, cast(void*)0);
	}
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
