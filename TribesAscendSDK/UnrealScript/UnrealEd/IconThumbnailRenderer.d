module UnrealScript.UnrealEd.IconThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailRenderer;

extern(C++) interface IconThumbnailRenderer : ThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.IconThumbnailRenderer")); }
}
