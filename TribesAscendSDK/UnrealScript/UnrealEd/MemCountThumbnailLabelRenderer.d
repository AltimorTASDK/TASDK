module UnrealScript.UnrealEd.MemCountThumbnailLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface MemCountThumbnailLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.MemCountThumbnailLabelRenderer")); }
	private static __gshared MemCountThumbnailLabelRenderer mDefaultProperties;
	@property final static MemCountThumbnailLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MemCountThumbnailLabelRenderer)("MemCountThumbnailLabelRenderer UnrealEd.Default__MemCountThumbnailLabelRenderer")); }
}
