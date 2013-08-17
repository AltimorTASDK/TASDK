module UnrealScript.UnrealEd.TerrainHeightMapFactoryG16BMPT3D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.TerrainHeightMapFactoryG16BMP;

extern(C++) interface TerrainHeightMapFactoryG16BMPT3D : TerrainHeightMapFactoryG16BMP
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.TerrainHeightMapFactoryG16BMPT3D")()); }
	private static __gshared TerrainHeightMapFactoryG16BMPT3D mDefaultProperties;
	@property final static TerrainHeightMapFactoryG16BMPT3D DefaultProperties() { mixin(MGDPC!(TerrainHeightMapFactoryG16BMPT3D, "TerrainHeightMapFactoryG16BMPT3D UnrealEd.Default__TerrainHeightMapFactoryG16BMPT3D")()); }
}
