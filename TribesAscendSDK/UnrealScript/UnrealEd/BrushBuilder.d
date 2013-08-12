module UnrealScript.UnrealEd.BrushBuilder;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface BrushBuilder : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.BrushBuilder")); }
	private static __gshared BrushBuilder mDefaultProperties;
	@property final static BrushBuilder DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(BrushBuilder)("BrushBuilder UnrealEd.Default__BrushBuilder")); }
}
