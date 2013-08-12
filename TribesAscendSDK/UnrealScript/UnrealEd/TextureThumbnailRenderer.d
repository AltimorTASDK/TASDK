module UnrealScript.UnrealEd.TextureThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailRenderer;

extern(C++) interface TextureThumbnailRenderer : ThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TextureThumbnailRenderer")); }
}
