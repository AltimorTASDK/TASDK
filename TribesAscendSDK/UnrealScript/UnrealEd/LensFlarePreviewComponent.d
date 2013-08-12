module UnrealScript.UnrealEd.LensFlarePreviewComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface LensFlarePreviewComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.LensFlarePreviewComponent")); }
	private static __gshared LensFlarePreviewComponent mDefaultProperties;
	@property final static LensFlarePreviewComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LensFlarePreviewComponent)("LensFlarePreviewComponent UnrealEd.Default__LensFlarePreviewComponent")); }
}
