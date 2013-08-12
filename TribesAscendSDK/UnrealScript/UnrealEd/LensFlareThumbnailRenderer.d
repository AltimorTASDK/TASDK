module UnrealScript.UnrealEd.LensFlareThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.TextureThumbnailRenderer;

extern(C++) interface LensFlareThumbnailRenderer : TextureThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.LensFlareThumbnailRenderer")); }
}
