module UnrealScript.Engine.InterpTrackInstBoolProp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstBoolProp : InterpTrackInstProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackInstBoolProp")); }
	private static __gshared InterpTrackInstBoolProp mDefaultProperties;
	@property final static InterpTrackInstBoolProp DefaultProperties() { mixin(MGDPC("InterpTrackInstBoolProp", "InterpTrackInstBoolProp Engine.Default__InterpTrackInstBoolProp")); }
	@property final
	{
		@property final auto ref Pointer BoolProp() { mixin(MGPC("Pointer", 68)); }
		bool ResetBool() { mixin(MGBPC(72, 0x1)); }
		bool ResetBool(bool val) { mixin(MSBPC(72, 0x1)); }
	}
}
