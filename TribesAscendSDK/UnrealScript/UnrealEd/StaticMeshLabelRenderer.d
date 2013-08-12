module UnrealScript.UnrealEd.StaticMeshLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface StaticMeshLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.StaticMeshLabelRenderer")); }
	private static __gshared StaticMeshLabelRenderer mDefaultProperties;
	@property final static StaticMeshLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(StaticMeshLabelRenderer)("StaticMeshLabelRenderer UnrealEd.Default__StaticMeshLabelRenderer")); }
}
