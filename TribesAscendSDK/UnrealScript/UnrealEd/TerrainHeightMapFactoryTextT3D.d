module UnrealScript.UnrealEd.TerrainHeightMapFactoryTextT3D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.TerrainHeightMapFactory;

extern(C++) interface TerrainHeightMapFactoryTextT3D : TerrainHeightMapFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.TerrainHeightMapFactoryTextT3D")); }
	private static __gshared TerrainHeightMapFactoryTextT3D mDefaultProperties;
	@property final static TerrainHeightMapFactoryTextT3D DefaultProperties() { mixin(MGDPC("TerrainHeightMapFactoryTextT3D", "TerrainHeightMapFactoryTextT3D UnrealEd.Default__TerrainHeightMapFactoryTextT3D")); }
}
