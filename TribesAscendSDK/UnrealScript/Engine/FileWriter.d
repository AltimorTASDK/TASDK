module UnrealScript.Engine.FileWriter;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface FileWriter : Info
{
public extern(D):
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
			UObject.Pointer ArchivePtr() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 476); }
			ScriptString Filename() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 480); }
			FileWriter.FWFileType FileType() { return *cast(FileWriter.FWFileType*)(cast(size_t)cast(void*)this + 492); }
		}
		bool bFlushEachWrite() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1) != 0; }
		bool bFlushEachWrite(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1; } return val; }
		bool bWantsAsyncWrites() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x2) != 0; }
		bool bWantsAsyncWrites(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x2; } return val; }
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15707], params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	void CloseFile()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15714], cast(void*)0, cast(void*)0);
	}
	void Logf(ScriptString logString)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = logString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15715], params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15717], cast(void*)0, cast(void*)0);
	}
}
