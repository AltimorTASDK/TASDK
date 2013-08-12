module UnrealScript.UnrealEd.ThumbnailRenderer;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ThumbnailRenderer : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ThumbnailRenderer")); }
	private static __gshared ThumbnailRenderer mDefaultProperties;
	@property final static ThumbnailRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ThumbnailRenderer)("ThumbnailRenderer UnrealEd.Default__ThumbnailRenderer")); }
}
