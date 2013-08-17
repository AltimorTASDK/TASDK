module UnrealScript.UnrealEd.GenericParamlistVisualizer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GameStatsVisualizer;

extern(C++) interface GenericParamlistVisualizer : GameStatsVisualizer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericParamlistVisualizer")); }
	private static __gshared GenericParamlistVisualizer mDefaultProperties;
	@property final static GenericParamlistVisualizer DefaultProperties() { mixin(MGDPC("GenericParamlistVisualizer", "GenericParamlistVisualizer UnrealEd.Default__GenericParamlistVisualizer")); }
}
