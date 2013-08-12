module UnrealScript.UnrealEd.TerrainHeightMapFactoryG16BMPT3D;

import ScriptClasses;
import UnrealScript.UnrealEd.TerrainHeightMapFactoryG16BMP;

extern(C++) interface TerrainHeightMapFactoryG16BMPT3D : TerrainHeightMapFactoryG16BMP
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TerrainHeightMapFactoryG16BMPT3D")); }
}
