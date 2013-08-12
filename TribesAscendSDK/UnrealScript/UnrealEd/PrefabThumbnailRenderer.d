module UnrealScript.UnrealEd.PrefabThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.IconThumbnailRenderer;

extern(C++) interface PrefabThumbnailRenderer : IconThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PrefabThumbnailRenderer")); }
}
