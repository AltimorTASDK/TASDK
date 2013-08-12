module UnrealScript.UnrealEd.AnimSetLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface AnimSetLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AnimSetLabelRenderer")); }
	private static __gshared AnimSetLabelRenderer mDefaultProperties;
	@property final static AnimSetLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimSetLabelRenderer)("AnimSetLabelRenderer UnrealEd.Default__AnimSetLabelRenderer")); }
}
