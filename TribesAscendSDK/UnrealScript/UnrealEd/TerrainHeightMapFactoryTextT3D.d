module UnrealScript.UnrealEd.TerrainHeightMapFactoryTextT3D;

import ScriptClasses;
import UnrealScript.UnrealEd.TerrainHeightMapFactory;

extern(C++) interface TerrainHeightMapFactoryTextT3D : TerrainHeightMapFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TerrainHeightMapFactoryTextT3D")); }
}
