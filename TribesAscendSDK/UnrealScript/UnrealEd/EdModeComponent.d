module UnrealScript.UnrealEd.EdModeComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.EditorComponent;

extern(C++) interface EdModeComponent : EditorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.EdModeComponent")()); }
	private static __gshared EdModeComponent mDefaultProperties;
	@property final static EdModeComponent DefaultProperties() { mixin(MGDPC!(EdModeComponent, "EdModeComponent UnrealEd.Default__EdModeComponent")()); }
}
