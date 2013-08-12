module UnrealScript.UTGame.SeqAct_UTCrowdSpawner;

import ScriptClasses;
import UnrealScript.GameFramework.SeqAct_GameCrowdSpawner;

extern(C++) interface SeqAct_UTCrowdSpawner : SeqAct_GameCrowdSpawner
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.SeqAct_UTCrowdSpawner")); }
	private static __gshared SeqAct_UTCrowdSpawner mDefaultProperties;
	@property final static SeqAct_UTCrowdSpawner DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_UTCrowdSpawner)("SeqAct_UTCrowdSpawner UTGame.Default__SeqAct_UTCrowdSpawner")); }
}
