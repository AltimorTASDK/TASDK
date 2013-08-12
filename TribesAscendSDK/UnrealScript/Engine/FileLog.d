module UnrealScript.Engine.FileLog;

import ScriptClasses;
import UnrealScript.Engine.FileWriter;

extern(C++) interface FileLog : FileWriter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FileLog")); }
	private static __gshared FileLog mDefaultProperties;
	@property final static FileLog DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FileLog)("FileLog Engine.Default__FileLog")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOpenLog;
			ScriptFunction mCloseLog;
		}
		public @property static final
		{
			ScriptFunction OpenLog() { return mOpenLog ? mOpenLog : (mOpenLog = ScriptObject.Find!(ScriptFunction)("Function Engine.FileLog.OpenLog")); }
			ScriptFunction CloseLog() { return mCloseLog ? mCloseLog : (mCloseLog = ScriptObject.Find!(ScriptFunction)("Function Engine.FileLog.CloseLog")); }
		}
	}
final:
	void OpenLog(ScriptString LogFilename, ScriptString extension, bool bUnique)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LogFilename;
		*cast(ScriptString*)&params[12] = extension;
		*cast(bool*)&params[24] = bUnique;
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenLog, params.ptr, cast(void*)0);
	}
	void CloseLog()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseLog, cast(void*)0, cast(void*)0);
	}
}
