module UnrealScript.UnrealEd.MaterialInstanceLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface MaterialInstanceLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.MaterialInstanceLabelRenderer")); }
	private static __gshared MaterialInstanceLabelRenderer mDefaultProperties;
	@property final static MaterialInstanceLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialInstanceLabelRenderer)("MaterialInstanceLabelRenderer UnrealEd.Default__MaterialInstanceLabelRenderer")); }
}
