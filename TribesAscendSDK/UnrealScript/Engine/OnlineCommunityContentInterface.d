module UnrealScript.Engine.OnlineCommunityContentInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineCommunityContentInterface : UInterface
{
	final bool Init()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21409], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void Exit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21411], cast(void*)0, cast(void*)0);
	}
	final bool ReadContentList(ubyte PlayerNum, int StartAt, int NumToRead)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(int*)&params[4] = StartAt;
		*cast(int*)&params[8] = NumToRead;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21412], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void OnReadContentListComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21417], params.ptr, cast(void*)0);
	}
	final void OnGetContentPayloadComplete(bool bWasSuccessful, OnlineSubsystem.CommunityContentFile FileDownloaded, ScriptArray!(ubyte)* Payload)
	{
		ubyte params[68];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = FileDownloaded;
		*cast(ScriptArray!(ubyte)*)&params[56] = *Payload;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21420], params.ptr, cast(void*)0);
		*Payload = *cast(ScriptArray!(ubyte)*)&params[56];
	}
	final void OnDownloadContentComplete(bool bWasSuccessful, OnlineSubsystem.CommunityContentFile FileDownloaded)
	{
		ubyte params[56];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = FileDownloaded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21422], params.ptr, cast(void*)0);
	}
	final void OnUploadContentComplete(bool bWasSuccessful, OnlineSubsystem.CommunityContentFile UploadedFile)
	{
		ubyte params[56];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = UploadedFile;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21424], params.ptr, cast(void*)0);
	}
	final void OnReadFriendsContentListComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21426], params.ptr, cast(void*)0);
	}
	final void AddReadContentListCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadContentListCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ReadContentListCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21428], params.ptr, cast(void*)0);
	}
	final void ClearReadContentListCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadContentListCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ReadContentListCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21430], params.ptr, cast(void*)0);
	}
	final bool GetContentList(ubyte PlayerNum, ScriptArray!(OnlineSubsystem.CommunityContentFile)* ContentFiles)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptArray!(OnlineSubsystem.CommunityContentFile)*)&params[4] = *ContentFiles;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21432], params.ptr, cast(void*)0);
		*ContentFiles = *cast(ScriptArray!(OnlineSubsystem.CommunityContentFile)*)&params[4];
		return *cast(bool*)&params[16];
	}
	final bool ReadFriendsContentList(ubyte PlayerNum, ScriptArray!(OnlineSubsystem.OnlineFriend)* Friends, int StartAt, int NumToRead)
	{
		ubyte params[25];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)&params[4] = *Friends;
		*cast(int*)&params[16] = StartAt;
		*cast(int*)&params[20] = NumToRead;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21437], params.ptr, cast(void*)0);
		*Friends = *cast(ScriptArray!(OnlineSubsystem.OnlineFriend)*)&params[4];
		return *cast(bool*)&params[24];
	}
	final void AddReadFriendsContentListCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadFriendsContentListCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ReadFriendsContentListCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21445], params.ptr, cast(void*)0);
	}
	final void ClearReadFriendsContentListCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadFriendsContentListCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ReadFriendsContentListCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21447], params.ptr, cast(void*)0);
	}
	final bool GetFriendsContentList(ubyte PlayerNum, OnlineSubsystem.OnlineFriend* Friend, ScriptArray!(OnlineSubsystem.CommunityContentFile)* ContentFiles)
	{
		ubyte params[65];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(OnlineSubsystem.OnlineFriend*)&params[4] = *Friend;
		*cast(ScriptArray!(OnlineSubsystem.CommunityContentFile)*)&params[52] = *ContentFiles;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21449], params.ptr, cast(void*)0);
		*Friend = *cast(OnlineSubsystem.OnlineFriend*)&params[4];
		*ContentFiles = *cast(ScriptArray!(OnlineSubsystem.CommunityContentFile)*)&params[52];
		return *cast(bool*)&params[64];
	}
	final bool UploadContent(ubyte PlayerNum, ScriptArray!(ubyte)* Payload, OnlineSubsystem.CommunityContentMetadata* MetaData)
	{
		ubyte params[33];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(ScriptArray!(ubyte)*)&params[4] = *Payload;
		*cast(OnlineSubsystem.CommunityContentMetadata*)&params[16] = *MetaData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21455], params.ptr, cast(void*)0);
		*Payload = *cast(ScriptArray!(ubyte)*)&params[4];
		*MetaData = *cast(OnlineSubsystem.CommunityContentMetadata*)&params[16];
		return *cast(bool*)&params[32];
	}
	final void AddUploadContentCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* UploadContentCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = UploadContentCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21463], params.ptr, cast(void*)0);
	}
	final void ClearUploadContentCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* UploadContentCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = UploadContentCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21465], params.ptr, cast(void*)0);
	}
	final bool DownloadContent(ubyte PlayerNum, OnlineSubsystem.CommunityContentFile* FileToDownload)
	{
		ubyte params[57];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = *FileToDownload;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21467], params.ptr, cast(void*)0);
		*FileToDownload = *cast(OnlineSubsystem.CommunityContentFile*)&params[4];
		return *cast(bool*)&params[56];
	}
	final void AddDownloadContentCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* DownloadContentCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = DownloadContentCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21473], params.ptr, cast(void*)0);
	}
	final void ClearDownloadContentCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* DownloadContentCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = DownloadContentCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21475], params.ptr, cast(void*)0);
	}
	final bool GetContentPayload(ubyte PlayerNum, OnlineSubsystem.CommunityContentFile* FileDownloaded)
	{
		ubyte params[57];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = *FileDownloaded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21477], params.ptr, cast(void*)0);
		*FileDownloaded = *cast(OnlineSubsystem.CommunityContentFile*)&params[4];
		return *cast(bool*)&params[56];
	}
	final void AddGetContentPayloadCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* GetContentPayloadCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = GetContentPayloadCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21485], params.ptr, cast(void*)0);
	}
	final void ClearGetContentPayloadCompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* GetContentPayloadCompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = GetContentPayloadCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21487], params.ptr, cast(void*)0);
	}
	final void RateContent(ubyte PlayerNum, OnlineSubsystem.CommunityContentFile* FileToRate, int NewRating)
	{
		ubyte params[57];
		params[] = 0;
		params[0] = PlayerNum;
		*cast(OnlineSubsystem.CommunityContentFile*)&params[4] = *FileToRate;
		*cast(int*)&params[56] = NewRating;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21489], params.ptr, cast(void*)0);
		*FileToRate = *cast(OnlineSubsystem.CommunityContentFile*)&params[4];
	}
}
