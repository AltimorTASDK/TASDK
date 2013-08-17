module UnrealScript.UnrealEd.GameStatsVisualizer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GameStatsVisitorImpl;

extern(C++) interface GameStatsVisualizer : GameStatsVisitorImpl
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GameStatsVisualizer")()); }
	private static __gshared GameStatsVisualizer mDefaultProperties;
	@property final static GameStatsVisualizer DefaultProperties() { mixin(MGDPC!(GameStatsVisualizer, "GameStatsVisualizer UnrealEd.Default__GameStatsVisualizer")()); }
}
