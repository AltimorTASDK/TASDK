module UnrealScript.Engine.FileWriter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface FileWriter : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.FileWriter")()); }
	private static __gshared FileWriter mDefaultProperties;
	@property final static FileWriter DefaultProperties() { mixin(MGDPC!(FileWriter, "FileWriter Engine.Default__FileWriter")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOpenFile;
			ScriptFunction mCloseFile;
			ScriptFunction mLogf;
			ScriptFunction mDestroyed;
		}
		public @property static final
		{
			ScriptFunction OpenFile() { mixin(MGF!("mOpenFile", "Function Engine.FileWriter.OpenFile")()); }
			ScriptFunction CloseFile() { mixin(MGF!("mCloseFile", "Function Engine.FileWriter.CloseFile")()); }
			ScriptFunction Logf() { mixin(MGF!("mLogf", "Function Engine.FileWriter.Logf")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function Engine.FileWriter.Destroyed")()); }
		}
	}
	enum FWFileType : ubyte
	{
		FWFT_Log = 0,
		FWFT_Stats = 1,
		FWFT_HTML = 2,
		FWFT_User = 3,
		FWFT_Debug = 4,
		FWFT_MAX = 5,
	}
	@property final
	{
		auto ref
		{
			UObject.Pointer ArchivePtr() { mixin(MGPC!(UObject.Pointer, 476)()); }
			ScriptString Filename() { mixin(MGPC!(ScriptString, 480)()); }
			FileWriter.FWFileType FileType() { mixin(MGPC!(FileWriter.FWFileType, 492)()); }
		}
		bool bFlushEachWrite() { mixin(MGBPC!(496, 0x1)()); }
		bool bFlushEachWrite(bool val) { mixin(MSBPC!(496, 0x1)()); }
		bool bWantsAsyncWrites() { mixin(MGBPC!(496, 0x2)()); }
		bool bWantsAsyncWrites(bool val) { mixin(MSBPC!(496, 0x2)()); }
	}
final:
	bool OpenFile(ScriptString InFilename, FileWriter.FWFileType InFileType, ScriptString InExtension, bool bUnique, bool bIncludeTimeStamp)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InFilename;
		*cast(FileWriter.FWFileType*)&params[12] = InFileType;
		*cast(ScriptString*)&params[16] = InExtension;
		*cast(bool*)&params[28] = bUnique;
		*cast(bool*)&params[32] = bIncludeTimeStamp;
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenFile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	void CloseFile()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseFile, cast(void*)0, cast(void*)0);
	}
	void Logf(ScriptString logString)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = logString;
		(cast(ScriptObject)this).ProcessEvent(Functions.Logf, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
}
