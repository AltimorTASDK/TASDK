module UnrealScript.Engine.PendingLevel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LevelBase;

extern(C++) interface PendingLevel : LevelBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PendingLevel")); }
	private static __gshared PendingLevel mDefaultProperties;
	@property final static PendingLevel DefaultProperties() { mixin(MGDPC("PendingLevel", "PendingLevel Engine.Default__PendingLevel")); }
}
