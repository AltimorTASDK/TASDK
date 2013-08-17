module UnrealScript.UnrealEd.BasicStatsVisualizer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GameStatsVisualizer;

extern(C++) interface BasicStatsVisualizer : GameStatsVisualizer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.BasicStatsVisualizer")); }
	private static __gshared BasicStatsVisualizer mDefaultProperties;
	@property final static BasicStatsVisualizer DefaultProperties() { mixin(MGDPC("BasicStatsVisualizer", "BasicStatsVisualizer UnrealEd.Default__BasicStatsVisualizer")); }
}
