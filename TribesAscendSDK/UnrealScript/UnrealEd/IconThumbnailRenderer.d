module UnrealScript.UnrealEd.IconThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailRenderer;

extern(C++) interface IconThumbnailRenderer : ThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.IconThumbnailRenderer")); }
	private static __gshared IconThumbnailRenderer mDefaultProperties;
	@property final static IconThumbnailRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(IconThumbnailRenderer)("IconThumbnailRenderer UnrealEd.Default__IconThumbnailRenderer")); }
}
