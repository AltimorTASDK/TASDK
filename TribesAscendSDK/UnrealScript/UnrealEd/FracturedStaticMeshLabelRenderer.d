module UnrealScript.UnrealEd.FracturedStaticMeshLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.StaticMeshLabelRenderer;

extern(C++) interface FracturedStaticMeshLabelRenderer : StaticMeshLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.FracturedStaticMeshLabelRenderer")()); }
	private static __gshared FracturedStaticMeshLabelRenderer mDefaultProperties;
	@property final static FracturedStaticMeshLabelRenderer DefaultProperties() { mixin(MGDPC!(FracturedStaticMeshLabelRenderer, "FracturedStaticMeshLabelRenderer UnrealEd.Default__FracturedStaticMeshLabelRenderer")()); }
}
