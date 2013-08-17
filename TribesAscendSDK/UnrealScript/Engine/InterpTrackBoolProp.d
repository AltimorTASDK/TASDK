module UnrealScript.Engine.InterpTrackBoolProp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackBoolProp : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackBoolProp")); }
	private static __gshared InterpTrackBoolProp mDefaultProperties;
	@property final static InterpTrackBoolProp DefaultProperties() { mixin(MGDPC("InterpTrackBoolProp", "InterpTrackBoolProp Engine.Default__InterpTrackBoolProp")); }
	struct BoolTrackKey
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.InterpTrackBoolProp.BoolTrackKey")); }
		@property final
		{
			@property final auto ref float Time() { mixin(MGPS("float", 0)); }
			bool Value() { mixin(MGBPS(4, 0x1)); }
			bool Value(bool val) { mixin(MSBPS(4, 0x1)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(InterpTrackBoolProp.BoolTrackKey) BoolTrack() { mixin(MGPC("ScriptArray!(InterpTrackBoolProp.BoolTrackKey)", 128)); }
		ScriptName PropertyName() { mixin(MGPC("ScriptName", 140)); }
	}
}
