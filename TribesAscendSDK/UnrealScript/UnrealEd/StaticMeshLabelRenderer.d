module UnrealScript.UnrealEd.StaticMeshLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface StaticMeshLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.StaticMeshLabelRenderer")); }
}
