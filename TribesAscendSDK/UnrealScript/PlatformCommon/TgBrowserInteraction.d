module UnrealScript.PlatformCommon.TgBrowserInteraction;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Interaction;

extern(C++) interface TgBrowserInteraction : Interaction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class PlatformCommon.TgBrowserInteraction")); }
	private static __gshared TgBrowserInteraction mDefaultProperties;
	@property final static TgBrowserInteraction DefaultProperties() { mixin(MGDPC("TgBrowserInteraction", "TgBrowserInteraction PlatformCommon.Default__TgBrowserInteraction")); }
	@property final auto ref Pointer VfTable_FCallbackEventDevice() { mixin(MGPC("Pointer", 108)); }
}
