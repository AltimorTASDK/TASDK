module UnrealScript.UnrealEd.ArchetypeThumbnailRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.IconThumbnailRenderer;

extern(C++) interface ArchetypeThumbnailRenderer : IconThumbnailRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ArchetypeThumbnailRenderer")); }
	private static __gshared ArchetypeThumbnailRenderer mDefaultProperties;
	@property final static ArchetypeThumbnailRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ArchetypeThumbnailRenderer)("ArchetypeThumbnailRenderer UnrealEd.Default__ArchetypeThumbnailRenderer")); }
}
