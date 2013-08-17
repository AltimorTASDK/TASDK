module UnrealScript.GameFramework.SeqAct_GameCrowdPopulationManagerToggle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameCrowd_ListOfAgents;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GameCrowdPopulationManagerToggle : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqAct_GameCrowdPopulationManagerToggle")()); }
	private static __gshared SeqAct_GameCrowdPopulationManagerToggle mDefaultProperties;
	@property final static SeqAct_GameCrowdPopulationManagerToggle DefaultProperties() { mixin(MGDPC!(SeqAct_GameCrowdPopulationManagerToggle, "SeqAct_GameCrowdPopulationManagerToggle GameFramework.Default__SeqAct_GameCrowdPopulationManagerToggle")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFindPopMgrTarget;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction FindPopMgrTarget() { mixin(MGF!("mFindPopMgrTarget", "Function GameFramework.SeqAct_GameCrowdPopulationManagerToggle.FindPopMgrTarget")()); }
			ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function GameFramework.SeqAct_GameCrowdPopulationManagerToggle.GetObjClassVersion")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float WarmupPct() { mixin(MGPC!(float, 232)()); }
			GameCrowd_ListOfAgents CrowdAgentList() { mixin(MGPC!(GameCrowd_ListOfAgents, 240)()); }
			float MaxSimulationDistance() { mixin(MGPC!(float, 252)()); }
			float SpawnRate() { mixin(MGPC!(float, 248)()); }
			int MaxAgents() { mixin(MGPC!(int, 244)()); }
			ScriptClass PopulationManagerClass() { mixin(MGPC!(ScriptClass, 256)()); }
		}
		bool bClearOldArchetypes() { mixin(MGBPC!(236, 0x2)()); }
		bool bClearOldArchetypes(bool val) { mixin(MSBPC!(236, 0x2)()); }
		bool bCastShadows() { mixin(MGBPC!(236, 0x8)()); }
		bool bCastShadows(bool val) { mixin(MSBPC!(236, 0x8)()); }
		bool bEnableCrowdLightEnvironment() { mixin(MGBPC!(236, 0x4)()); }
		bool bEnableCrowdLightEnvironment(bool val) { mixin(MSBPC!(236, 0x4)()); }
		bool bKillAgentsInstantly() { mixin(MGBPC!(236, 0x1)()); }
		bool bKillAgentsInstantly(bool val) { mixin(MSBPC!(236, 0x1)()); }
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
