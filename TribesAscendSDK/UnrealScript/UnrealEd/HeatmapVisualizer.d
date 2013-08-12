module UnrealScript.UnrealEd.HeatmapVisualizer;

import ScriptClasses;
import UnrealScript.UnrealEd.GameStatsVisualizer;

extern(C++) interface HeatmapVisualizer : GameStatsVisualizer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.HeatmapVisualizer")); }
	private static __gshared HeatmapVisualizer mDefaultProperties;
	@property final static HeatmapVisualizer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(HeatmapVisualizer)("HeatmapVisualizer UnrealEd.Default__HeatmapVisualizer")); }
}
