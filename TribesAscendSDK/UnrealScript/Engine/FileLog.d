module UnrealScript.Engine.FileLog;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.FileWriter;

extern(C++) interface FileLog : FileWriter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FileLog")); }
	private static __gshared FileLog mDefaultProperties;
	@property final static FileLog DefaultProperties() { mixin(MGDPC("FileLog", "FileLog Engine.Default__FileLog")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOpenLog;
			ScriptFunction mCloseLog;
		}
		public @property static final
		{
			ScriptFunction OpenLog() { mixin(MGF("mOpenLog", "Function Engine.FileLog.OpenLog")); }
			ScriptFunction CloseLog() { mixin(MGF("mCloseLog", "Function Engine.FileLog.CloseLog")); }
		}
	}
final:
	void OpenLog(ScriptString LogFilename, ScriptString* extension = null, bool* bUnique = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LogFilename;
		if (extension !is null)
			*cast(ScriptString*)&params[12] = *extension;
		if (bUnique !is null)
			*cast(bool*)&params[24] = *bUnique;
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenLog, params.ptr, cast(void*)0);
	}
	void CloseLog()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseLog, cast(void*)0, cast(void*)0);
	}
}
