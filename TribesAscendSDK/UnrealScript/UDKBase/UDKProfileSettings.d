module UnrealScript.UDKBase.UDKProfileSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.OnlineProfileSettings;

extern(C++) interface UDKProfileSettings : OnlineProfileSettings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKProfileSettings")()); }
	private static __gshared UDKProfileSettings mDefaultProperties;
	@property final static UDKProfileSettings DefaultProperties() { mixin(MGDPC!(UDKProfileSettings, "UDKProfileSettings UDKBase.Default__UDKProfileSettings")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mResetToDefault;
			ScriptFunction mResetKeysToDefault;
		}
		public @property static final
		{
			ScriptFunction ResetToDefault() { mixin(MGF!("mResetToDefault", "Function UDKBase.UDKProfileSettings.ResetToDefault")()); }
			ScriptFunction ResetKeysToDefault() { mixin(MGF!("mResetKeysToDefault", "Function UDKBase.UDKProfileSettings.ResetKeysToDefault")()); }
		}
	}
final:
	void ResetToDefault(int ProfileId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ProfileId;
		(cast(ScriptObject)this).ProcessEvent(Functions.ResetToDefault, params.ptr, cast(void*)0);
	}
	static void ResetKeysToDefault(LocalPlayer InPlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayerOwner;
		StaticClass.ProcessEvent(Functions.ResetKeysToDefault, params.ptr, cast(void*)0);
	}
}
