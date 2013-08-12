module UnrealScript.UnrealEd.DefaultSizedThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailRenderer;

extern(C++) interface DefaultSizedThumbnailRenderer : ThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.DefaultSizedThumbnailRenderer")); }
	private static __gshared DefaultSizedThumbnailRenderer mDefaultProperties;
	@property final static DefaultSizedThumbnailRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DefaultSizedThumbnailRenderer)("DefaultSizedThumbnailRenderer UnrealEd.Default__DefaultSizedThumbnailRenderer")); }
}
