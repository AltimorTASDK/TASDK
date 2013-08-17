module UnrealScript.UnrealEd.StaticMeshLabelRenderer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.ThumbnailLabelRenderer;

extern(C++) interface StaticMeshLabelRenderer : ThumbnailLabelRenderer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.StaticMeshLabelRenderer")()); }
	private static __gshared StaticMeshLabelRenderer mDefaultProperties;
	@property final static StaticMeshLabelRenderer DefaultProperties() { mixin(MGDPC!(StaticMeshLabelRenderer, "StaticMeshLabelRenderer UnrealEd.Default__StaticMeshLabelRenderer")()); }
}
