module UnrealScript.UnrealEd.PlayerMovementVisualizer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GameStatsVisualizer;

extern(C++) interface PlayerMovementVisualizer : GameStatsVisualizer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.PlayerMovementVisualizer")()); }
	private static __gshared PlayerMovementVisualizer mDefaultProperties;
	@property final static PlayerMovementVisualizer DefaultProperties() { mixin(MGDPC!(PlayerMovementVisualizer, "PlayerMovementVisualizer UnrealEd.Default__PlayerMovementVisualizer")()); }
}
