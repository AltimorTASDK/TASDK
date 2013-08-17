module UnrealScript.UnrealEd.TerrainHeightMapFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TerrainHeightMapFactory : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.TerrainHeightMapFactory")); }
	private static __gshared TerrainHeightMapFactory mDefaultProperties;
	@property final static TerrainHeightMapFactory DefaultProperties() { mixin(MGDPC("TerrainHeightMapFactory", "TerrainHeightMapFactory UnrealEd.Default__TerrainHeightMapFactory")); }
}
