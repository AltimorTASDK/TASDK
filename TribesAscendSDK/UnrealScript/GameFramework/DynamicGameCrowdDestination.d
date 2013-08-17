module UnrealScript.GameFramework.DynamicGameCrowdDestination;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameCrowdDestination;

extern(C++) interface DynamicGameCrowdDestination : GameCrowdDestination
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.DynamicGameCrowdDestination")()); }
	private static __gshared DynamicGameCrowdDestination mDefaultProperties;
	@property final static DynamicGameCrowdDestination DefaultProperties() { mixin(MGDPC!(DynamicGameCrowdDestination, "DynamicGameCrowdDestination GameFramework.Default__DynamicGameCrowdDestination")()); }
}
