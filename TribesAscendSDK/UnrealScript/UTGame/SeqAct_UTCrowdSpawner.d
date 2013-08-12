module UnrealScript.UTGame.SeqAct_UTCrowdSpawner;

import ScriptClasses;
import UnrealScript.GameFramework.SeqAct_GameCrowdSpawner;

extern(C++) interface SeqAct_UTCrowdSpawner : SeqAct_GameCrowdSpawner
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.SeqAct_UTCrowdSpawner")); }
}
