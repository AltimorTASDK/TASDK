module UnrealScript.UnrealEd.MaterialEditorOptions;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface MaterialEditorOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.MaterialEditorOptions")); }
	private static __gshared MaterialEditorOptions mDefaultProperties;
	@property final static MaterialEditorOptions DefaultProperties() { mixin(MGDPC("MaterialEditorOptions", "MaterialEditorOptions UnrealEd.Default__MaterialEditorOptions")); }
}
