module UnrealScript.Engine.Input;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Interaction;

extern(C++) interface Input : Interaction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Input")); }
	private static __gshared Input mDefaultProperties;
	@property final static Input DefaultProperties() { mixin(MGDPC("Input", "Input Engine.Default__Input")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mResetInput;
			ScriptFunction mGetBind;
			ScriptFunction mGetBindNameFromCommandScript;
			ScriptFunction mSetBind;
		}
		public @property static final
		{
			ScriptFunction ResetInput() { mixin(MGF("mResetInput", "Function Engine.Input.ResetInput")); }
			ScriptFunction GetBind() { mixin(MGF("mGetBind", "Function Engine.Input.GetBind")); }
			ScriptFunction GetBindNameFromCommandScript() { mixin(MGF("mGetBindNameFromCommandScript", "Function Engine.Input.GetBindNameFromCommandScript")); }
			ScriptFunction SetBind() { mixin(MGF("mSetBind", "Function Engine.Input.SetBind")); }
		}
	}
	struct KeyBind
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Input.KeyBind")); }
		@property final
		{
			auto ref
			{
				ScriptString Command() { mixin(MGPS("ScriptString", 8)); }
				ScriptName Name() { mixin(MGPS("ScriptName", 0)); }
			}
			bool bIgnoreAlt() { mixin(MGBPS(20, 0x20)); }
			bool bIgnoreAlt(bool val) { mixin(MSBPS(20, 0x20)); }
			bool bIgnoreShift() { mixin(MGBPS(20, 0x10)); }
			bool bIgnoreShift(bool val) { mixin(MSBPS(20, 0x10)); }
			bool bIgnoreCtrl() { mixin(MGBPS(20, 0x8)); }
			bool bIgnoreCtrl(bool val) { mixin(MSBPS(20, 0x8)); }
			bool Alt() { mixin(MGBPS(20, 0x4)); }
			bool Alt(bool val) { mixin(MSBPS(20, 0x4)); }
			bool Shift() { mixin(MGBPS(20, 0x2)); }
			bool Shift(bool val) { mixin(MSBPS(20, 0x2)); }
			bool Control() { mixin(MGBPS(20, 0x1)); }
			bool Control(bool val) { mixin(MSBPS(20, 0x1)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Input.KeyBind) Bindings() { mixin(MGPC("ScriptArray!(Input.KeyBind)", 108)); }
		ScriptArray!(ScriptName) PressedKeys() { mixin(MGPC("ScriptArray!(ScriptName)", 120)); }
		ScriptArray!(UObject.Pointer) AxisArray() { mixin(MGPC("ScriptArray!(UObject.Pointer)", 204)); }
		// ERROR: Unsupported object class 'MapProperty' for the property named 'NameToPtr'!
		float CurrentDeltaTime() { mixin(MGPC("float", 140)); }
		float CurrentDelta() { mixin(MGPC("float", 136)); }
		UObject.EInputEvent CurrentEvent() { mixin(MGPC("UObject.EInputEvent", 132)); }
	}
final:
	void ResetInput()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetInput, cast(void*)0, cast(void*)0);
	}
	ScriptString GetBind(ref in ScriptName Key)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = cast(ScriptName)Key;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBind, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	ScriptString GetBindNameFromCommandScript(ref in ScriptString KeyCommand)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = cast(ScriptString)KeyCommand;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBindNameFromCommandScript, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void SetBind(ref in ScriptName BindName, ScriptString Command)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = cast(ScriptName)BindName;
		*cast(ScriptString*)&params[8] = Command;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBind, params.ptr, cast(void*)0);
	}
}
