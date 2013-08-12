module UnrealScript.UnrealEd.TextureThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailRenderer;

extern(C++) interface TextureThumbnailRenderer : ThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TextureThumbnailRenderer")); }
	private static __gshared TextureThumbnailRenderer mDefaultProperties;
	@property final static TextureThumbnailRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TextureThumbnailRenderer)("TextureThumbnailRenderer UnrealEd.Default__TextureThumbnailRenderer")); }
}
