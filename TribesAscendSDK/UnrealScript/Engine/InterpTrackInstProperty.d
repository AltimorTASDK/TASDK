module UnrealScript.Engine.InterpTrackInstProperty;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Core.UObject;
import UnrealScript.Core.Function;

extern(C++) interface InterpTrackInstProperty : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackInstProperty")); }
	private static __gshared InterpTrackInstProperty mDefaultProperties;
	@property final static InterpTrackInstProperty DefaultProperties() { mixin(MGDPC("InterpTrackInstProperty", "InterpTrackInstProperty Engine.Default__InterpTrackInstProperty")); }
	@property final auto ref
	{
		UObject PropertyOuterObjectInst() { mixin(MGPC("UObject", 64)); }
		Function PropertyUpdateCallback() { mixin(MGPC("Function", 60)); }
	}
}
