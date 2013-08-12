module UnrealScript.UnrealEd.GenericParamlistVisualizer;

import ScriptClasses;
import UnrealScript.UnrealEd.GameStatsVisualizer;

extern(C++) interface GenericParamlistVisualizer : GameStatsVisualizer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericParamlistVisualizer")); }
}
