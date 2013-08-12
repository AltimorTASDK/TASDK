module UnrealScript.PlatformCommon.TgBrowserInteraction;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Interaction;

extern(C++) interface TgBrowserInteraction : Interaction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class PlatformCommon.TgBrowserInteraction")); }
	@property final auto ref UObject.Pointer VfTable_FCallbackEventDevice() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 108); }
}
