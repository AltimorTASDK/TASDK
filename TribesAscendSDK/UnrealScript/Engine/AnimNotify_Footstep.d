module UnrealScript.Engine.AnimNotify_Footstep;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Footstep : AnimNotify
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimNotify_Footstep")); }
	private static __gshared AnimNotify_Footstep mDefaultProperties;
	@property final static AnimNotify_Footstep DefaultProperties() { mixin(MGDPC("AnimNotify_Footstep", "AnimNotify_Footstep Engine.Default__AnimNotify_Footstep")); }
	@property final auto ref int FootDown() { mixin(MGPC("int", 64)); }
}
