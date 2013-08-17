module UnrealScript.Engine.InterpTrackInstLinearColorProp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstLinearColorProp : InterpTrackInstProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackInstLinearColorProp")); }
	private static __gshared InterpTrackInstLinearColorProp mDefaultProperties;
	@property final static InterpTrackInstLinearColorProp DefaultProperties() { mixin(MGDPC("InterpTrackInstLinearColorProp", "InterpTrackInstLinearColorProp Engine.Default__InterpTrackInstLinearColorProp")); }
	@property final auto ref
	{
		UObject.LinearColor ResetColor() { mixin(MGPC("UObject.LinearColor", 72)); }
		UObject.Pointer ColorProp() { mixin(MGPC("UObject.Pointer", 68)); }
	}
}
