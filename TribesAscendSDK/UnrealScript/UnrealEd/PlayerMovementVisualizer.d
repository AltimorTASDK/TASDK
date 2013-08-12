module UnrealScript.UnrealEd.PlayerMovementVisualizer;

import ScriptClasses;
import UnrealScript.UnrealEd.GameStatsVisualizer;

extern(C++) interface PlayerMovementVisualizer : GameStatsVisualizer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PlayerMovementVisualizer")); }
	private static __gshared PlayerMovementVisualizer mDefaultProperties;
	@property final static PlayerMovementVisualizer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PlayerMovementVisualizer)("PlayerMovementVisualizer UnrealEd.Default__PlayerMovementVisualizer")); }
}
