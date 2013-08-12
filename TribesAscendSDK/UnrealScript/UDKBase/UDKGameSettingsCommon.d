module UnrealScript.UDKBase.UDKGameSettingsCommon;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;

extern(C++) interface UDKGameSettingsCommon : OnlineGameSettings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKGameSettingsCommon")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mStringToBlob;
			ScriptFunction mBlobToString;
		}
		public @property static final
		{
			ScriptFunction StringToBlob() { return mStringToBlob ? mStringToBlob : (mStringToBlob = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKGameSettingsCommon.StringToBlob")); }
			ScriptFunction BlobToString() { return mBlobToString ? mBlobToString : (mBlobToString = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKGameSettingsCommon.BlobToString")); }
		}
	}
final:
	static bool StringToBlob(ScriptString* InString, ScriptString* OutBlob)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *InString;
		*cast(ScriptString*)&params[12] = *OutBlob;
		StaticClass.ProcessEvent(Functions.StringToBlob, params.ptr, cast(void*)0);
		*InString = *cast(ScriptString*)params.ptr;
		*OutBlob = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[24];
	}
	static ScriptString BlobToString(ScriptString* InBlob)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *InBlob;
		StaticClass.ProcessEvent(Functions.BlobToString, params.ptr, cast(void*)0);
		*InBlob = *cast(ScriptString*)params.ptr;
		return *cast(ScriptString*)&params[12];
	}
}
