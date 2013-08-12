module UnrealScript.UnrealEd.PostProcessLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface PostProcessLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PostProcessLabelRenderer")); }
	private static __gshared PostProcessLabelRenderer mDefaultProperties;
	@property final static PostProcessLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PostProcessLabelRenderer)("PostProcessLabelRenderer UnrealEd.Default__PostProcessLabelRenderer")); }
}
