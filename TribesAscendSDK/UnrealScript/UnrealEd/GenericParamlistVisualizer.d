module UnrealScript.UnrealEd.GenericParamlistVisualizer;

import ScriptClasses;
import UnrealScript.UnrealEd.GameStatsVisualizer;

extern(C++) interface GenericParamlistVisualizer : GameStatsVisualizer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericParamlistVisualizer")); }
	private static __gshared GenericParamlistVisualizer mDefaultProperties;
	@property final static GenericParamlistVisualizer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericParamlistVisualizer)("GenericParamlistVisualizer UnrealEd.Default__GenericParamlistVisualizer")); }
}
