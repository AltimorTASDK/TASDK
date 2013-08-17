module UnrealScript.Engine.OnlineCommunityContentInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineCommunityContentInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlineCommunityContentInterface")()); }
	private static __gshared OnlineCommunityContentInterface mDefaultProperties;
	@property final static OnlineCommunityContentInterface DefaultProperties() { mixin(MGDPC!(OnlineCommunityContentInterface, "OnlineCommunityContentInterface Engine.Default__OnlineCommunityContentInterface")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mExit;
			ScriptFunction mReadContentList;
			ScriptFunction mOnReadContentListComplete;
			ScriptFunction mOnGetContentPayloadComplete;
			ScriptFunction mOnDownloadContentComplete;
			ScriptFunction mOnUploadContentComplete;
			ScriptFunction mOnReadFriendsContentListComplete;
			ScriptFunction mAddReadContentListCompleteDelegate;
			ScriptFunction mClearReadContentListCompleteDelegate;
			ScriptFunction mGetContentList;
			ScriptFunction mReadFriendsContentList;
			ScriptFunction mAddReadFriendsContentListCompleteDelegate;
			ScriptFunction mClearReadFriendsContentListCompleteDelegate;
			ScriptFunction mGetFriendsContentList;
			ScriptFunction mUploadContent;
			ScriptFunction mAddUploadContentCompleteDelegate;
			ScriptFunction mClearUploadContentCompleteDelegate;
			ScriptFunction mDownloadContent;
			ScriptFunction mAddDownloadContentCompleteDelegate;
			ScriptFunction mClearDownloadContentCompleteDelegate;
			ScriptFunction mGetContentPayload;
			ScriptFunction mAddGetContentPayloadCompleteDelegate;
			ScriptFunction mClearGetContentPayloadCompleteDelegate;
			ScriptFunction mRateContent;
		}
		public @property static final
		{
			ScriptFunction Init() { mixin(MGF!("mInit", "Function Engine.OnlineCommunityContentInterface.Init")()); }
			ScriptFunction Exit() { mixin(MGF!("mExit", "Function Engine.OnlineCommunityContentInterface.Exit")()); }
			ScriptFunction ReadContentList() { mixin(MGF!("mReadContentList", "Function Engine.OnlineCommunityContentInterface.ReadContentList")()); }
			ScriptFunction OnReadContentListComplete() { mixin(MGF!("mOnReadContentListComplete", "Function Engine.OnlineCommunityContentInterface.OnReadContentListComplete")()); }
			ScriptFunction OnGetContentPayloadComplete() { mixin(MGF!("mOnGetContentPayloadComplete", "Function Engine.OnlineCommunityContentInterface.OnGetContentPayloadComplete")()); }
			ScriptFunction OnDownloadContentComplete() { mixin(MGF!("mOnDownloadContentComplete", "Function Engine.OnlineCommunityContentInterface.OnDownloadContentComplete")()); }
			ScriptFunction OnUploadContentComplete() { mixin(MGF!("mOnUploadContentComplete", "Function Engine.OnlineCommunityContentInterface.OnUploadContentComplete")()); }
			ScriptFunction OnReadFriendsContentListComplete() { mixin(MGF!("mOnReadFriendsContentListComplete", "Function Engine.OnlineCommunityContentInterface.OnReadFriendsContentListComplete")()); }
			ScriptFunction AddReadContentListCompleteDelegate() { mixin(MGF!("mAddReadContentListCompleteDelegate", "Function Engine.OnlineCommunityContentInterface.AddReadContentListCompleteDelegate")()); }
			ScriptFunction ClearReadContentListCompleteDelegate() { mixin(MGF!("mClearReadContentListCompleteDelegate", "Function Engine.OnlineCommunityContentInterface.ClearReadContentListCompleteDelegate")()); }
			ScriptFunction GetContentList() { mixin(MGF!("mGetContentList", "Function Engine.OnlineCommunityContentInterface.GetContentList")()); }
			ScriptFunction ReadFriendsContentList() { mixin(MGF!("mReadFriendsContentList", "Function Engine.OnlineCommunityContentInterface.ReadFriendsContentList")()); }
			ScriptFunction AddReadFriendsContentListCompleteDelegate() { mixin(MGF!("mAddReadFriendsContentListCompleteDelegate", "Function Engine.OnlineCommunityContentInterface.AddReadFriendsContentListCompleteDelegate")()); }
			ScriptFunction ClearReadFriendsContentListCompleteDelegate() { mixin(MGF!("mClearReadFriendsContentListCompleteDelegate", "Function Engine.OnlineCommunityContentInterface.ClearReadFriendsContentListCompleteDelegate")()); }
			ScriptFunction GetFriendsContentList() { mixin(MGF!("mGetFriendsContentList", "Function Engine.OnlineCommunityContentInterface.GetFriendsContentList")()); }
			ScriptFunction UploadContent() { mixin(MGF!("mUploadContent", "Function Engine.OnlineCommunityContentInterface.UploadContent")()); }
			ScriptFunction AddUploadContentCompleteDelegate() { mixin(MGF!("mAddUploadContentCompleteDelegate", "Function Engine.OnlineCommunityContentInterface.AddUploadContentCompleteDelegate")()); }
			ScriptFunction ClearUploadContentCompleteDelegate() { mixin(MGF!("mClearUploadContentCompleteDelegate", "Function Engine.OnlineCommunityContentInterface.ClearUploadContentCompleteDelegate")()); }
			ScriptFunction DownloadContent() { mixin(MGF!("mDownloadContent", "Function Engine.OnlineCommunityContentInterface.DownloadContent")()); }
			ScriptFunction AddDownloadContentCompleteDelegate() { mixin(MGF!("mAddDownloadContentCompleteDelegate", "Function Engine.OnlineCommunityContentInterface.AddDownloadContentCompleteDelegate")()); }
			ScriptFunction ClearDownloadContentCompleteDelegate() { mixin(MGF!("mClearDownloadContentCompleteDelegate", "Function Engine.OnlineCommunityContentInterface.ClearDownloadContentCompleteDelegate")()); }
			ScriptFunction GetContentPayload() { mixin(MGF!("mGetContentPayload", "Function Engine.OnlineCommunityContentInterface.GetContentPayload")()); }
			ScriptFunction AddGetContentPayloadCompleteDelegate() { mixin(MGF!("mAddGetContentPayloadCompleteDelegate", "Function Engine.OnlineCommunityContentInterface.AddGetContentPayloadCompleteDelegate")()); }
			ScriptFunction ClearGetContentPayloadCompleteDelegate() { mixin(MGF!("mClearGetContentPayloadCompleteDelegate", "Function Engine.OnlineCommunityContentInterface.ClearGetContentPayloadCompleteDelegate")()); }
			ScriptFunction RateContent() { mixin(MGF!("mRateContent", "Function Engine.OnlineCommunityContentInterface.RateContent")()); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnGetContentPayloadComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnDownloadContentComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnUploadContentComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadFriendsContentListComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadContentListComplete__Delegate'!
	}
final:
	bool Init()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Exit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Exit, cast(void*)0, cast(void*)0);
	}
	bool ReadContentList(ubyte PlayerNum, int StartAt, int NumToRead)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(int*)&params[4] = StartAt;
		*cast(int*)&params[8] = NumToRead;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadContentList, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void OnReadContentListComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadContentListComplete, params.ptr, cast(void*)0);
	}
	void OnGetContentPayloadComplete(bool bWasSuccessful, OnlineSubsystem.CommunityContentFile FileDownloaded, ref const ScriptArray!(ubyte) Payload)
	{
		ubyte params[68];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = FileDownloaded;
		*cast(ScriptArray!(ubyte)*)&params[56] = Payload;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGetContentPayloadComplete, params.ptr, cast(void*)0);
		*Payload = *cast(ScriptArray!(ubyte)*)&params[56];
	}
	void OnDownloadContentComplete(bool bWasSuccessful, OnlineSubsystem.CommunityContentFile FileDownloaded)
	{
		ubyte params[56];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = FileDownloaded;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDownloadContentComplete, params.ptr, cast(void*)0);
	}
	void OnUploadContentComplete(bool bWasSuccessful, OnlineSubsystem.CommunityContentFile UploadedFile)
	{
		ubyte params[56];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = UploadedFile;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUploadContentComplete, params.ptr, cast(void*)0);
	}
	void OnReadFriendsContentListComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadFriendsContentListComplete, params.ptr, cast(void*)0);
	}
	void AddReadContentListCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadContentListCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadContentListCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadContentListCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearReadContentListCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadContentListCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadContentListCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadContentListCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool GetContentList(ubyte PlayerNum, ref ScriptArray!(OnlineSubsystem.CommunityContentFile) ContentFiles)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptArray!(OnlineSubsystem.CommunityContentFile)*)&params[4] = ContentFiles;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetContentList, params.ptr, cast(void*)0);
		*ContentFiles = *cast(ScriptArray!(OnlineSubsystem.CommunityContentFile)*)&params[4];
		return *cast(bool*)&params[16];
	}
	bool ReadFriendsContentList(ubyte PlayerNum, ref const ScriptArray!(OnlineSubsystem.OnlineFriend) Friends, int StartAt, int NumToRead)
	{
		ubyte params[28];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)&params[4] = Friends;
		*cast(int*)&params[16] = StartAt;
		*cast(int*)&params[20] = NumToRead;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadFriendsContentList, params.ptr, cast(void*)0);
		*Friends = *cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)&params[4];
		return *cast(bool*)&params[24];
	}
	void AddReadFriendsContentListCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadFriendsContentListCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadFriendsContentListCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadFriendsContentListCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearReadFriendsContentListCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadFriendsContentListCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadFriendsContentListCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadFriendsContentListCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool GetFriendsContentList(ubyte PlayerNum, ref const OnlineSubsystem.OnlineFriend Friend, ref ScriptArray!(OnlineSubsystem.CommunityContentFile) ContentFiles)
	{
		ubyte params[68];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(OnlineSubsystem.OnlineFriend*)&params[4] = Friend;
		*cast(ScriptArray!(OnlineSubsystem.CommunityContentFile)*)&params[52] = ContentFiles;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFriendsContentList, params.ptr, cast(void*)0);
		*Friend = *cast(OnlineSubsystem.OnlineFriend*)&params[4];
		*ContentFiles = *cast(ScriptArray!(OnlineSubsystem.CommunityContentFile)*)&params[52];
		return *cast(bool*)&params[64];
	}
	bool UploadContent(ubyte PlayerNum, ref const ScriptArray!(ubyte) Payload, ref const OnlineSubsystem.CommunityContentMetadata pMetaData)
	{
		ubyte params[36];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptArray!(ubyte)*)&params[4] = Payload;
		*cast(OnlineSubsystem.CommunityContentMetadata*)&params[16] = pMetaData;
		(cast(ScriptObject)this).ProcessEvent(Functions.UploadContent, params.ptr, cast(void*)0);
		*Payload = *cast(ScriptArray!(ubyte)*)&params[4];
		*pMetaData = *cast(OnlineSubsystem.CommunityContentMetadata*)&params[16];
		return *cast(bool*)&params[32];
	}
	void AddUploadContentCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* UploadContentCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = UploadContentCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddUploadContentCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearUploadContentCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* UploadContentCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = UploadContentCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearUploadContentCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool DownloadContent(ubyte PlayerNum, ref const OnlineSubsystem.CommunityContentFile FileToDownload)
	{
		ubyte params[60];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = FileToDownload;
		(cast(ScriptObject)this).ProcessEvent(Functions.DownloadContent, params.ptr, cast(void*)0);
		*FileToDownload = *cast(OnlineSubsystem.CommunityContentFile*)&params[4];
		return *cast(bool*)&params[56];
	}
	void AddDownloadContentCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* DownloadContentCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = DownloadContentCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDownloadContentCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearDownloadContentCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* DownloadContentCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = DownloadContentCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearDownloadContentCompleteDelegate, params.ptr, cast(void*)0);
	}
	bool GetContentPayload(ubyte PlayerNum, ref const OnlineSubsystem.CommunityContentFile FileDownloaded)
	{
		ubyte params[60];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = FileDownloaded;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetContentPayload, params.ptr, cast(void*)0);
		*FileDownloaded = *cast(OnlineSubsystem.CommunityContentFile*)&params[4];
		return *cast(bool*)&params[56];
	}
	void AddGetContentPayloadCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* GetContentPayloadCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = GetContentPayloadCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddGetContentPayloadCompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearGetContentPayloadCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* GetContentPayloadCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = GetContentPayloadCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearGetContentPayloadCompleteDelegate, params.ptr, cast(void*)0);
	}
	void RateContent(ubyte PlayerNum, ref const OnlineSubsystem.CommunityContentFile FileToRate, int NewRating)
	{
		ubyte params[60];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = FileToRate;
		*cast(int*)&params[56] = NewRating;
		(cast(ScriptObject)this).ProcessEvent(Functions.RateContent, params.ptr, cast(void*)0);
		*FileToRate = *cast(OnlineSubsystem.CommunityContentFile*)&params[4];
	}
}
