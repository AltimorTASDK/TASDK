module UnrealScript.UnrealEd.FontThumbnailLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface FontThumbnailLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FontThumbnailLabelRenderer")); }
	private static __gshared FontThumbnailLabelRenderer mDefaultProperties;
	@property final static FontThumbnailLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FontThumbnailLabelRenderer)("FontThumbnailLabelRenderer UnrealEd.Default__FontThumbnailLabelRenderer")); }
}
