module UnrealScript.UnrealEd.LensFlareThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.TextureThumbnailRenderer;

extern(C++) interface LensFlareThumbnailRenderer : TextureThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.LensFlareThumbnailRenderer")); }
	private static __gshared LensFlareThumbnailRenderer mDefaultProperties;
	@property final static LensFlareThumbnailRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LensFlareThumbnailRenderer)("LensFlareThumbnailRenderer UnrealEd.Default__LensFlareThumbnailRenderer")); }
}
