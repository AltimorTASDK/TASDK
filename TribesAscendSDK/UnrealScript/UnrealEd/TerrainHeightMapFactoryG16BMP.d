module UnrealScript.UnrealEd.TerrainHeightMapFactoryG16BMP;

import ScriptClasses;
import UnrealScript.UnrealEd.TerrainHeightMapFactory;

extern(C++) interface TerrainHeightMapFactoryG16BMP : TerrainHeightMapFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TerrainHeightMapFactoryG16BMP")); }
	private static __gshared TerrainHeightMapFactoryG16BMP mDefaultProperties;
	@property final static TerrainHeightMapFactoryG16BMP DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TerrainHeightMapFactoryG16BMP)("TerrainHeightMapFactoryG16BMP UnrealEd.Default__TerrainHeightMapFactoryG16BMP")); }
}
