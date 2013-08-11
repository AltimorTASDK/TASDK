module UnrealScript.Engine.FileLog;

import ScriptClasses;
import UnrealScript.Engine.FileWriter;

extern(C++) interface FileLog : FileWriter
{
public extern(D):
final:
	void OpenLog(ScriptString LogFilename, ScriptString extension, bool bUnique)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LogFilename;
		*cast(ScriptString*)&params[12] = extension;
		*cast(bool*)&params[24] = bUnique;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15722], params.ptr, cast(void*)0);
	}
	void CloseLog()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15726], cast(void*)0, cast(void*)0);
	}
}
