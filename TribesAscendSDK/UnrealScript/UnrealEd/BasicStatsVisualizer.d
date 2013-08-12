module UnrealScript.UnrealEd.BasicStatsVisualizer;

import ScriptClasses;
import UnrealScript.UnrealEd.GameStatsVisualizer;

extern(C++) interface BasicStatsVisualizer : GameStatsVisualizer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.BasicStatsVisualizer")); }
}
