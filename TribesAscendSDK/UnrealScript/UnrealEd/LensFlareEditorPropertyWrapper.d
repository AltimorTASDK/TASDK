module UnrealScript.UnrealEd.LensFlareEditorPropertyWrapper;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface LensFlareEditorPropertyWrapper : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.LensFlareEditorPropertyWrapper")); }
	private static __gshared LensFlareEditorPropertyWrapper mDefaultProperties;
	@property final static LensFlareEditorPropertyWrapper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LensFlareEditorPropertyWrapper)("LensFlareEditorPropertyWrapper UnrealEd.Default__LensFlareEditorPropertyWrapper")); }
}
