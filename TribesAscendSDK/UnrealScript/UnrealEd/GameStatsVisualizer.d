module UnrealScript.UnrealEd.GameStatsVisualizer;

import ScriptClasses;
import UnrealScript.UnrealEd.GameStatsVisitorImpl;

extern(C++) interface GameStatsVisualizer : GameStatsVisitorImpl
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GameStatsVisualizer")); }
	private static __gshared GameStatsVisualizer mDefaultProperties;
	@property final static GameStatsVisualizer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameStatsVisualizer)("GameStatsVisualizer UnrealEd.Default__GameStatsVisualizer")); }
}
