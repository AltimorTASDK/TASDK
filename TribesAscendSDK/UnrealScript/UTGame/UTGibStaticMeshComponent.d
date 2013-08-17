module UnrealScript.UTGame.UTGibStaticMeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.StaticMeshComponent;

extern(C++) interface UTGibStaticMeshComponent : StaticMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTGibStaticMeshComponent")); }
	private static __gshared UTGibStaticMeshComponent mDefaultProperties;
	@property final static UTGibStaticMeshComponent DefaultProperties() { mixin(MGDPC("UTGibStaticMeshComponent", "UTGibStaticMeshComponent UTGame.Default__UTGibStaticMeshComponent")); }
}
