module UnrealScript.Engine.InterpTrackInstColorProp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstColorProp : InterpTrackInstProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackInstColorProp")); }
	private static __gshared InterpTrackInstColorProp mDefaultProperties;
	@property final static InterpTrackInstColorProp DefaultProperties() { mixin(MGDPC("InterpTrackInstColorProp", "InterpTrackInstColorProp Engine.Default__InterpTrackInstColorProp")); }
	@property final auto ref
	{
		UObject.Color ResetColor() { mixin(MGPC("UObject.Color", 72)); }
		UObject.Pointer ColorProp() { mixin(MGPC("UObject.Pointer", 68)); }
	}
}
