module UnrealScript.UnrealEd.HeatmapVisualizer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GameStatsVisualizer;

extern(C++) interface HeatmapVisualizer : GameStatsVisualizer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.HeatmapVisualizer")); }
	private static __gshared HeatmapVisualizer mDefaultProperties;
	@property final static HeatmapVisualizer DefaultProperties() { mixin(MGDPC("HeatmapVisualizer", "HeatmapVisualizer UnrealEd.Default__HeatmapVisualizer")); }
}
