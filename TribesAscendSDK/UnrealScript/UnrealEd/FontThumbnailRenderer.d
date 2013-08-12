module UnrealScript.UnrealEd.FontThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.TextureThumbnailRenderer;

extern(C++) interface FontThumbnailRenderer : TextureThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FontThumbnailRenderer")); }
}
