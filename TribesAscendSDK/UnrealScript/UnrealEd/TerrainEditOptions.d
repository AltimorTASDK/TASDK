module UnrealScript.UnrealEd.TerrainEditOptions;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TerrainEditOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.TerrainEditOptions")()); }
	private static __gshared TerrainEditOptions mDefaultProperties;
	@property final static TerrainEditOptions DefaultProperties() { mixin(MGDPC!(TerrainEditOptions, "TerrainEditOptions UnrealEd.Default__TerrainEditOptions")()); }
}
