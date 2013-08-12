module UnrealScript.UnrealEd.AnimTreeLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface AnimTreeLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnimTreeLabelRenderer")); }
	private static __gshared AnimTreeLabelRenderer mDefaultProperties;
	@property final static AnimTreeLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimTreeLabelRenderer)("AnimTreeLabelRenderer UnrealEd.Default__AnimTreeLabelRenderer")); }
}
