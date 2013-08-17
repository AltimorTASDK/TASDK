module UnrealScript.UnrealEd.MaterialEditorInstanceConstant;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface MaterialEditorInstanceConstant : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.MaterialEditorInstanceConstant")()); }
	private static __gshared MaterialEditorInstanceConstant mDefaultProperties;
	@property final static MaterialEditorInstanceConstant DefaultProperties() { mixin(MGDPC!(MaterialEditorInstanceConstant, "MaterialEditorInstanceConstant UnrealEd.Default__MaterialEditorInstanceConstant")()); }
}
