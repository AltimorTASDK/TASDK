module UnrealScript.UnrealEd.FracturedStaticMeshLabelRenderer;

import ScriptClasses;
import UnrealScript.UnrealEd.StaticMeshLabelRenderer;

extern(C++) interface FracturedStaticMeshLabelRenderer : StaticMeshLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.FracturedStaticMeshLabelRenderer")); }
	private static __gshared FracturedStaticMeshLabelRenderer mDefaultProperties;
	@property final static FracturedStaticMeshLabelRenderer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FracturedStaticMeshLabelRenderer)("FracturedStaticMeshLabelRenderer UnrealEd.Default__FracturedStaticMeshLabelRenderer")); }
}
