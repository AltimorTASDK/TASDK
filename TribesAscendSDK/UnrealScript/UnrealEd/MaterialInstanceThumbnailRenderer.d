module UnrealScript.UnrealEd.MaterialInstanceThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.DefaultSizedThumbnailRenderer;

extern(C++) interface MaterialInstanceThumbnailRenderer : DefaultSizedThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.MaterialInstanceThumbnailRenderer")); }
	private static __gshared MaterialInstanceThumbnailRenderer mDefaultProperties;
	@property final static MaterialInstanceThumbnailRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialInstanceThumbnailRenderer)("MaterialInstanceThumbnailRenderer UnrealEd.Default__MaterialInstanceThumbnailRenderer")); }
}
