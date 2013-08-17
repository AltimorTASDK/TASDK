module UnrealScript.UnrealEd.LensFlareEditorOptions;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface LensFlareEditorOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.LensFlareEditorOptions")); }
	private static __gshared LensFlareEditorOptions mDefaultProperties;
	@property final static LensFlareEditorOptions DefaultProperties() { mixin(MGDPC("LensFlareEditorOptions", "LensFlareEditorOptions UnrealEd.Default__LensFlareEditorOptions")); }
}
