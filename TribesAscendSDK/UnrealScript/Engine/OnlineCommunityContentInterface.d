module UnrealScript.Engine.OnlineCommunityContentInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineCommunityContentInterface : UInterface
{
public extern(D):
final:
	bool Init()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21409], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Exit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21411], cast(void*)0, cast(void*)0);
	}
	bool ReadContentList(ubyte PlayerNum, int StartAt, int NumToRead)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(int*)&params[4] = StartAt;
		*cast(int*)&params[8] = NumToRead;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21412], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void OnReadContentListComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21417], params.ptr, cast(void*)0);
	}
	void OnGetContentPayloadComplete(bool bWasSuccessful, OnlineSubsystem.CommunityContentFile FileDownloaded, ScriptArray!(ubyte)* Payload)
	{
		ubyte params[68];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = FileDownloaded;
		*cast(ScriptArray!(ubyte)*)&params[56] = *Payload;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21420], params.ptr, cast(void*)0);
		*Payload = *cast(ScriptArray!(ubyte)*)&params[56];
	}
	void OnDownloadContentComplete(bool bWasSuccessful, OnlineSubsystem.CommunityContentFile FileDownloaded)
	{
		ubyte params[56];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = FileDownloaded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21422], params.ptr, cast(void*)0);
	}
	void OnUploadContentComplete(bool bWasSuccessful, OnlineSubsystem.CommunityContentFile UploadedFile)
	{
		ubyte params[56];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = UploadedFile;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21424], params.ptr, cast(void*)0);
	}
	void OnReadFriendsContentListComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21426], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21428], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21430], params.ptr, cast(void*)0);
	}
	bool GetContentList(ubyte PlayerNum, ScriptArray!(OnlineSubsystem.CommunityContentFile)* ContentFiles)
	{
		ubyte params[20];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptArray!(OnlineSubsystem.CommunityContentFile)*)&params[4] = *ContentFiles;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21432], params.ptr, cast(void*)0);
		*ContentFiles = *cast(ScriptArray!(OnlineSubsystem.CommunityContentFile)*)&params[4];
		return *cast(bool*)&params[16];
	}
	bool ReadFriendsContentList(ubyte PlayerNum, ScriptArray!(OnlineSubsystem.OnlineFriend)* Friends, int StartAt, int NumToRead)
	{
		ubyte params[28];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)&params[4] = *Friends;
		*cast(int*)&params[16] = StartAt;
		*cast(int*)&params[20] = NumToRead;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21437], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21445], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21447], params.ptr, cast(void*)0);
	}
	bool GetFriendsContentList(ubyte PlayerNum, OnlineSubsystem.OnlineFriend* Friend, ScriptArray!(OnlineSubsystem.CommunityContentFile)* ContentFiles)
	{
		ubyte params[68];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(OnlineSubsystem.OnlineFriend*)&params[4] = *Friend;
		*cast(ScriptArray!(OnlineSubsystem.CommunityContentFile)*)&params[52] = *ContentFiles;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21449], params.ptr, cast(void*)0);
		*Friend = *cast(OnlineSubsystem.OnlineFriend*)&params[4];
		*ContentFiles = *cast(ScriptArray!(OnlineSubsystem.CommunityContentFile)*)&params[52];
		return *cast(bool*)&params[64];
	}
	bool UploadContent(ubyte PlayerNum, ScriptArray!(ubyte)* Payload, OnlineSubsystem.CommunityContentMetadata* pMetaData)
	{
		ubyte params[36];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptArray!(ubyte)*)&params[4] = *Payload;
		*cast(OnlineSubsystem.CommunityContentMetadata*)&params[16] = *pMetaData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21455], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21463], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21465], params.ptr, cast(void*)0);
	}
	bool DownloadContent(ubyte PlayerNum, OnlineSubsystem.CommunityContentFile* FileToDownload)
	{
		ubyte params[60];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = *FileToDownload;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21467], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21473], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21475], params.ptr, cast(void*)0);
	}
	bool GetContentPayload(ubyte PlayerNum, OnlineSubsystem.CommunityContentFile* FileDownloaded)
	{
		ubyte params[60];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = *FileDownloaded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21477], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21485], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21487], params.ptr, cast(void*)0);
	}
	void RateContent(ubyte PlayerNum, OnlineSubsystem.CommunityContentFile* FileToRate, int NewRating)
	{
		ubyte params[60];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = *FileToRate;
		*cast(int*)&params[56] = NewRating;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21489], params.ptr, cast(void*)0);
		*FileToRate = *cast(OnlineSubsystem.CommunityContentFile*)&params[4];
	}
}
