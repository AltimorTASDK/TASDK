module UnrealScript.UnrealEd.AITreeLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface AITreeLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.AITreeLabelRenderer")); }
	private static __gshared AITreeLabelRenderer mDefaultProperties;
	@property final static AITreeLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AITreeLabelRenderer)("AITreeLabelRenderer UnrealEd.Default__AITreeLabelRenderer")); }
}
