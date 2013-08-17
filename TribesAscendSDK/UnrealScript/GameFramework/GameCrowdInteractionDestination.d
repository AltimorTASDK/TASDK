module UnrealScript.GameFramework.GameCrowdInteractionDestination;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameCrowdDestination;

extern(C++) interface GameCrowdInteractionDestination : GameCrowdDestination
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameCrowdInteractionDestination")()); }
	private static __gshared GameCrowdInteractionDestination mDefaultProperties;
	@property final static GameCrowdInteractionDestination DefaultProperties() { mixin(MGDPC!(GameCrowdInteractionDestination, "GameCrowdInteractionDestination GameFramework.Default__GameCrowdInteractionDestination")()); }
}
