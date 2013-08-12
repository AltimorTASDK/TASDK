module UnrealScript.UnrealEd.ThumbnailLabelRenderer;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ThumbnailLabelRenderer : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.ThumbnailLabelRenderer")); }
	private static __gshared ThumbnailLabelRenderer mDefaultProperties;
	@property final static ThumbnailLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ThumbnailLabelRenderer)("ThumbnailLabelRenderer UnrealEd.Default__ThumbnailLabelRenderer")); }
}
