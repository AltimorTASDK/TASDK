module UnrealScript.UnrealEd.CascadePreviewComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface CascadePreviewComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.CascadePreviewComponent")); }
	private static __gshared CascadePreviewComponent mDefaultProperties;
	@property final static CascadePreviewComponent DefaultProperties() { mixin(MGDPC("CascadePreviewComponent", "CascadePreviewComponent UnrealEd.Default__CascadePreviewComponent")); }
}
