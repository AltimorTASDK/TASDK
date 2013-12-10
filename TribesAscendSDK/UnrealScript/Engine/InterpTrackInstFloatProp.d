module UnrealScript.Engine.InterpTrackInstFloatProp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstFloatProp : InterpTrackInstProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackInstFloatProp")); }
	private static __gshared InterpTrackInstFloatProp mDefaultProperties;
	@property final static InterpTrackInstFloatProp DefaultProperties() { mixin(MGDPC("InterpTrackInstFloatProp", "InterpTrackInstFloatProp Engine.Default__InterpTrackInstFloatProp")); }
	@property final auto ref
	{
		float ResetFloat() { mixin(MGPC("float", 72)); }
		Pointer FloatProp() { mixin(MGPC("Pointer", 68)); }
	}
}
