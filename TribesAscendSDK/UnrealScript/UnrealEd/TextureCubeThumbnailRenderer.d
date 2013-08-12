module UnrealScript.UnrealEd.TextureCubeThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.TextureThumbnailRenderer;

extern(C++) interface TextureCubeThumbnailRenderer : TextureThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TextureCubeThumbnailRenderer")); }
	private static __gshared TextureCubeThumbnailRenderer mDefaultProperties;
	@property final static TextureCubeThumbnailRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TextureCubeThumbnailRenderer)("TextureCubeThumbnailRenderer UnrealEd.Default__TextureCubeThumbnailRenderer")); }
}
