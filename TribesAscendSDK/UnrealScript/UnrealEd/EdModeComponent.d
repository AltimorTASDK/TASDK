module UnrealScript.UnrealEd.EdModeComponent;

import ScriptClasses;
import UnrealScript.UnrealEd.EditorComponent;

extern(C++) interface EdModeComponent : EditorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.EdModeComponent")); }
	private static __gshared EdModeComponent mDefaultProperties;
	@property final static EdModeComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(EdModeComponent)("EdModeComponent UnrealEd.Default__EdModeComponent")); }
}
