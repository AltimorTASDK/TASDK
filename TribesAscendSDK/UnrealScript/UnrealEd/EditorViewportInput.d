module UnrealScript.UnrealEd.EditorViewportInput;

import ScriptClasses;
import UnrealScript.Engine.Input;

extern(C++) interface EditorViewportInput : Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.EditorViewportInput")); }
	private static __gshared EditorViewportInput mDefaultProperties;
	@property final static EditorViewportInput DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(EditorViewportInput)("EditorViewportInput UnrealEd.Default__EditorViewportInput")); }
}
