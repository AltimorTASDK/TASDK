module UnrealScript.Engine.LightmappedSurfaceCollection;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Model;

extern(C++) interface LightmappedSurfaceCollection : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LightmappedSurfaceCollection")); }
	private static __gshared LightmappedSurfaceCollection mDefaultProperties;
	@property final static LightmappedSurfaceCollection DefaultProperties() { mixin(MGDPC("LightmappedSurfaceCollection", "LightmappedSurfaceCollection Engine.Default__LightmappedSurfaceCollection")); }
	@property final auto ref
	{
		ScriptArray!(int) Surfaces() { mixin(MGPC("ScriptArray!(int)", 64)); }
		Model SourceModel() { mixin(MGPC("Model", 60)); }
	}
}
