module UnrealScript.UnrealEd.TerrainHeightMapFactoryTextT3D;

import ScriptClasses;
import UnrealScript.UnrealEd.TerrainHeightMapFactory;

extern(C++) interface TerrainHeightMapFactoryTextT3D : TerrainHeightMapFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TerrainHeightMapFactoryTextT3D")); }
	private static __gshared TerrainHeightMapFactoryTextT3D mDefaultProperties;
	@property final static TerrainHeightMapFactoryTextT3D DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TerrainHeightMapFactoryTextT3D)("TerrainHeightMapFactoryTextT3D UnrealEd.Default__TerrainHeightMapFactoryTextT3D")); }
}
