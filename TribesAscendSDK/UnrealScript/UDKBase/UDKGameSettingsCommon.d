module UnrealScript.UDKBase.UDKGameSettingsCommon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineGameSettings;

extern(C++) interface UDKGameSettingsCommon : OnlineGameSettings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKGameSettingsCommon")); }
	private static __gshared UDKGameSettingsCommon mDefaultProperties;
	@property final static UDKGameSettingsCommon DefaultProperties() { mixin(MGDPC("UDKGameSettingsCommon", "UDKGameSettingsCommon UDKBase.Default__UDKGameSettingsCommon")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mStringToBlob;
			ScriptFunction mBlobToString;
		}
		public @property static final
		{
			ScriptFunction StringToBlob() { mixin(MGF("mStringToBlob", "Function UDKBase.UDKGameSettingsCommon.StringToBlob")); }
			ScriptFunction BlobToString() { mixin(MGF("mBlobToString", "Function UDKBase.UDKGameSettingsCommon.BlobToString")); }
		}
	}
final:
	static bool StringToBlob(ref in ScriptString InString, ref ScriptString OutBlob)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = cast(ScriptString)InString;
		*cast(ScriptString*)&params[12] = OutBlob;
		StaticClass.ProcessEvent(Functions.StringToBlob, params.ptr, cast(void*)0);
		OutBlob = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[24];
	}
	static ScriptString BlobToString(ref in ScriptString InBlob)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = cast(ScriptString)InBlob;
		StaticClass.ProcessEvent(Functions.BlobToString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
}
