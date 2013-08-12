module UnrealScript.UnrealEd.TerrainHeightMapFactory;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TerrainHeightMapFactory : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TerrainHeightMapFactory")); }
	private static __gshared TerrainHeightMapFactory mDefaultProperties;
	@property final static TerrainHeightMapFactory DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TerrainHeightMapFactory)("TerrainHeightMapFactory UnrealEd.Default__TerrainHeightMapFactory")); }
}
