module UnrealScript.UnrealEd.PerformanceVisualizer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.HeatmapVisualizer;

extern(C++) interface PerformanceVisualizer : HeatmapVisualizer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.PerformanceVisualizer")()); }
	private static __gshared PerformanceVisualizer mDefaultProperties;
	@property final static PerformanceVisualizer DefaultProperties() { mixin(MGDPC!(PerformanceVisualizer, "PerformanceVisualizer UnrealEd.Default__PerformanceVisualizer")()); }
}
