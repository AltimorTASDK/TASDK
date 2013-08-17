module UnrealScript.UnrealEd.LensFlarePreviewComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface LensFlarePreviewComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.LensFlarePreviewComponent")()); }
	private static __gshared LensFlarePreviewComponent mDefaultProperties;
	@property final static LensFlarePreviewComponent DefaultProperties() { mixin(MGDPC!(LensFlarePreviewComponent, "LensFlarePreviewComponent UnrealEd.Default__LensFlarePreviewComponent")()); }
}
