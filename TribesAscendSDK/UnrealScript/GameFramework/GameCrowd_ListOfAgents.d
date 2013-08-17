module UnrealScript.GameFramework.GameCrowd_ListOfAgents;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.SeqAct_GameCrowdSpawner;

extern(C++) interface GameCrowd_ListOfAgents : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameCrowd_ListOfAgents")()); }
	private static __gshared GameCrowd_ListOfAgents mDefaultProperties;
	@property final static GameCrowd_ListOfAgents DefaultProperties() { mixin(MGDPC!(GameCrowd_ListOfAgents, "GameCrowd_ListOfAgents GameFramework.Default__GameCrowd_ListOfAgents")()); }
	@property final auto ref ScriptArray!(SeqAct_GameCrowdSpawner.AgentArchetypeInfo) ListOfAgents() { mixin(MGPC!(ScriptArray!(SeqAct_GameCrowdSpawner.AgentArchetypeInfo), 60)()); }
}
