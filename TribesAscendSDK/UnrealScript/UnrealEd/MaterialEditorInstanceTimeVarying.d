module UnrealScript.UnrealEd.MaterialEditorInstanceTimeVarying;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface MaterialEditorInstanceTimeVarying : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.MaterialEditorInstanceTimeVarying")()); }
	private static __gshared MaterialEditorInstanceTimeVarying mDefaultProperties;
	@property final static MaterialEditorInstanceTimeVarying DefaultProperties() { mixin(MGDPC!(MaterialEditorInstanceTimeVarying, "MaterialEditorInstanceTimeVarying UnrealEd.Default__MaterialEditorInstanceTimeVarying")()); }
}
