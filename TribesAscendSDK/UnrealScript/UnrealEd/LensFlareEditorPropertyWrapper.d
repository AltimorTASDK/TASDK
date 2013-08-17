module UnrealScript.UnrealEd.LensFlareEditorPropertyWrapper;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface LensFlareEditorPropertyWrapper : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.LensFlareEditorPropertyWrapper")); }
	private static __gshared LensFlareEditorPropertyWrapper mDefaultProperties;
	@property final static LensFlareEditorPropertyWrapper DefaultProperties() { mixin(MGDPC("LensFlareEditorPropertyWrapper", "LensFlareEditorPropertyWrapper UnrealEd.Default__LensFlareEditorPropertyWrapper")); }
}
