module UnrealScript.Engine.PylonSeed;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface PylonSeed : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PylonSeed")); }
	private static __gshared PylonSeed mDefaultProperties;
	@property final static PylonSeed DefaultProperties() { mixin(MGDPC("PylonSeed", "PylonSeed Engine.Default__PylonSeed")); }
	@property final auto ref Pointer VfTable_IInterface_NavMeshPathObject() { mixin(MGPC("Pointer", 476)); }
}
