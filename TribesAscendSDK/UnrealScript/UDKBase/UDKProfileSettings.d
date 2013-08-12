module UnrealScript.UDKBase.UDKProfileSettings;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.OnlineProfileSettings;

extern(C++) interface UDKProfileSettings : OnlineProfileSettings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKProfileSettings")); }
	private static __gshared UDKProfileSettings mDefaultProperties;
	@property final static UDKProfileSettings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKProfileSettings)("UDKProfileSettings UDKBase.Default__UDKProfileSettings")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mResetToDefault;
			ScriptFunction mResetKeysToDefault;
		}
		public @property static final
		{
			ScriptFunction ResetToDefault() { return mResetToDefault ? mResetToDefault : (mResetToDefault = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKProfileSettings.ResetToDefault")); }
			ScriptFunction ResetKeysToDefault() { return mResetKeysToDefault ? mResetKeysToDefault : (mResetKeysToDefault = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKProfileSettings.ResetKeysToDefault")); }
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
