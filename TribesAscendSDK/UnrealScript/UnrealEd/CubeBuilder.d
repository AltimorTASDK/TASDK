module UnrealScript.UnrealEd.CubeBuilder;

import ScriptClasses;
import UnrealScript.UnrealEd.BrushBuilder;

extern(C++) interface CubeBuilder : BrushBuilder
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CubeBuilder")); }
	private static __gshared CubeBuilder mDefaultProperties;
	@property final static CubeBuilder DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CubeBuilder)("CubeBuilder UnrealEd.Default__CubeBuilder")); }
}
