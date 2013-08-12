module UnrealScript.Engine.OnlineTitleFileInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineTitleFileInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineTitleFileInterface")); }
	private static __gshared OnlineTitleFileInterface mDefaultProperties;
	@property final static OnlineTitleFileInterface DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(OnlineTitleFileInterface)("OnlineTitleFileInterface Engine.Default__OnlineTitleFileInterface")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReadTitleFile;
			ScriptFunction mGetTitleFileContents;
			ScriptFunction mClearDownloadedFiles;
			ScriptFunction mOnReadTitleFileComplete;
			ScriptFunction mAddReadTitleFileCompleteDelegate;
			ScriptFunction mClearReadTitleFileCompleteDelegate;
			ScriptFunction mGetTitleFileState;
			ScriptFunction mClearDownloadedFile;
		}
		public @property static final
		{
			ScriptFunction ReadTitleFile() { return mReadTitleFile ? mReadTitleFile : (mReadTitleFile = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineTitleFileInterface.ReadTitleFile")); }
			ScriptFunction GetTitleFileContents() { return mGetTitleFileContents ? mGetTitleFileContents : (mGetTitleFileContents = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineTitleFileInterface.GetTitleFileContents")); }
			ScriptFunction ClearDownloadedFiles() { return mClearDownloadedFiles ? mClearDownloadedFiles : (mClearDownloadedFiles = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineTitleFileInterface.ClearDownloadedFiles")); }
			ScriptFunction OnReadTitleFileComplete() { return mOnReadTitleFileComplete ? mOnReadTitleFileComplete : (mOnReadTitleFileComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineTitleFileInterface.OnReadTitleFileComplete")); }
			ScriptFunction AddReadTitleFileCompleteDelegate() { return mAddReadTitleFileCompleteDelegate ? mAddReadTitleFileCompleteDelegate : (mAddReadTitleFileCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineTitleFileInterface.AddReadTitleFileCompleteDelegate")); }
			ScriptFunction ClearReadTitleFileCompleteDelegate() { return mClearReadTitleFileCompleteDelegate ? mClearReadTitleFileCompleteDelegate : (mClearReadTitleFileCompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineTitleFileInterface.ClearReadTitleFileCompleteDelegate")); }
			ScriptFunction GetTitleFileState() { return mGetTitleFileState ? mGetTitleFileState : (mGetTitleFileState = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineTitleFileInterface.GetTitleFileState")); }
			ScriptFunction ClearDownloadedFile() { return mClearDownloadedFile ? mClearDownloadedFile : (mClearDownloadedFile = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineTitleFileInterface.ClearDownloadedFile")); }
		}
	}
final:
	bool ReadTitleFile(ScriptString FileToRead)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = FileToRead;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadTitleFile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool GetTitleFileContents(ScriptString Filename, ScriptArray!(ubyte)* FileContents)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		*cast(ScriptArray!(ubyte)*)&params[12] = *FileContents;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTitleFileContents, params.ptr, cast(void*)0);
		*FileContents = *cast(ScriptArray!(ubyte)*)&params[12];
		return *cast(bool*)&params[24];
	}
	bool ClearDownloadedFiles()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearDownloadedFiles, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnReadTitleFileComplete(bool bWasSuccessful, ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(ScriptString*)&params[4] = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadTitleFileComplete, params.ptr, cast(void*)0);
	}
	void AddReadTitleFileCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadTitleFileCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadTitleFileCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadTitleFileCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearReadTitleFileCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadTitleFileCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadTitleFileCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadTitleFileCompleteDelegate, params.ptr, cast(void*)0);
	}
	OnlineSubsystem.EOnlineEnumerationReadState GetTitleFileState(ScriptString Filename)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTitleFileState, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)&params[12];
	}
	bool ClearDownloadedFile(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearDownloadedFile, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
