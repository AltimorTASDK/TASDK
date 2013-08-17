module UnrealScript.UnrealEd.GameStatsDatabase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface GameStatsDatabase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GameStatsDatabase")); }
	private static __gshared GameStatsDatabase mDefaultProperties;
	@property final static GameStatsDatabase DefaultProperties() { mixin(MGDPC("GameStatsDatabase", "GameStatsDatabase UnrealEd.Default__GameStatsDatabase")); }
}
