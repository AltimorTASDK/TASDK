module UnrealScript.UnrealEd.LensFlareEditorOptions;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface LensFlareEditorOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.LensFlareEditorOptions")); }
	private static __gshared LensFlareEditorOptions mDefaultProperties;
	@property final static LensFlareEditorOptions DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LensFlareEditorOptions)("LensFlareEditorOptions UnrealEd.Default__LensFlareEditorOptions")); }
}
