module UnrealScript.Engine.EditorLinkSelectionInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UInterface;

extern(C++) interface EditorLinkSelectionInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.EditorLinkSelectionInterface")()); }
	private static __gshared EditorLinkSelectionInterface mDefaultProperties;
	@property final static EditorLinkSelectionInterface DefaultProperties() { mixin(MGDPC!(EditorLinkSelectionInterface, "EditorLinkSelectionInterface Engine.Default__EditorLinkSelectionInterface")()); }
}
