module UnrealScript.UnrealEd.TerrainEditOptions;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TerrainEditOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.TerrainEditOptions")); }
	private static __gshared TerrainEditOptions mDefaultProperties;
	@property final static TerrainEditOptions DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TerrainEditOptions)("TerrainEditOptions UnrealEd.Default__TerrainEditOptions")); }
}
