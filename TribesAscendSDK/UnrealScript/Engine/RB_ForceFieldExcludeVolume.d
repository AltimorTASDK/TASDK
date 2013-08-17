module UnrealScript.Engine.RB_ForceFieldExcludeVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Volume;

extern(C++) interface RB_ForceFieldExcludeVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.RB_ForceFieldExcludeVolume")); }
	private static __gshared RB_ForceFieldExcludeVolume mDefaultProperties;
	@property final static RB_ForceFieldExcludeVolume DefaultProperties() { mixin(MGDPC("RB_ForceFieldExcludeVolume", "RB_ForceFieldExcludeVolume Engine.Default__RB_ForceFieldExcludeVolume")); }
	@property final auto ref int ForceFieldChannel() { mixin(MGPC("int", 520)); }
}
