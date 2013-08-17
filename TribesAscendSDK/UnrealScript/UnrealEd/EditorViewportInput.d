module UnrealScript.UnrealEd.EditorViewportInput;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Input;

extern(C++) interface EditorViewportInput : Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.EditorViewportInput")()); }
	private static __gshared EditorViewportInput mDefaultProperties;
	@property final static EditorViewportInput DefaultProperties() { mixin(MGDPC!(EditorViewportInput, "EditorViewportInput UnrealEd.Default__EditorViewportInput")()); }
}
