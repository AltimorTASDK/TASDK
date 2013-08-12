module UnrealScript.UnrealEd.PerformanceVisualizer;

import ScriptClasses;
import UnrealScript.UnrealEd.HeatmapVisualizer;

extern(C++) interface PerformanceVisualizer : HeatmapVisualizer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PerformanceVisualizer")); }
	private static __gshared PerformanceVisualizer mDefaultProperties;
	@property final static PerformanceVisualizer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PerformanceVisualizer)("PerformanceVisualizer UnrealEd.Default__PerformanceVisualizer")); }
}
