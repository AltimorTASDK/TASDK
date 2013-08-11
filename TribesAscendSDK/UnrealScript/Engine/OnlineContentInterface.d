module UnrealScript.Engine.OnlineContentInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineContentInterface : UInterface
{
public extern(D):
final:
	void OnContentChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21494], cast(void*)0, cast(void*)0);
	}
	void OnWriteSaveGameDataComplete(bool bWasSuccessful, ubyte LocalUserNum, int DeviceID, ScriptString FriendlyName, ScriptString Filename, ScriptString SaveFileName)
	{
		ubyte params[48];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		params[4] = LocalUserNum;
		*cast(int*)&params[8] = DeviceID;
		*cast(ScriptString*)&params[12] = FriendlyName;
		*cast(ScriptString*)&params[24] = Filename;
		*cast(ScriptString*)&params[36] = SaveFileName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21496], params.ptr, cast(void*)0);
	}
	void OnReadSaveGameDataComplete(bool bWasSuccessful, ubyte LocalUserNum, int DeviceID, ScriptString FriendlyName, ScriptString Filename, ScriptString SaveFileName)
	{
		ubyte params[48];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		params[4] = LocalUserNum;
		*cast(int*)&params[8] = DeviceID;
		*cast(ScriptString*)&params[12] = FriendlyName;
		*cast(ScriptString*)&params[24] = Filename;
		*cast(ScriptString*)&params[36] = SaveFileName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21498], params.ptr, cast(void*)0);
	}
	void OnQueryAvailableDownloadsComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21500], params.ptr, cast(void*)0);
	}
	void OnReadContentComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21502], params.ptr, cast(void*)0);
	}
	void AddContentChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ContentDelegate, ubyte LocalUserNum)
	{
		ubyte params[13];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ContentDelegate;
		params[12] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21504], params.ptr, cast(void*)0);
	}
	void ClearContentChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ContentDelegate, ubyte LocalUserNum)
	{
		ubyte params[13];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ContentDelegate;
		params[12] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21507], params.ptr, cast(void*)0);
	}
	void AddReadContentComplete(ubyte LocalUserNum, OnlineSubsystem.EOnlineContentType ContentType, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadContentCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineContentType*)&params[1] = ContentType;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ReadContentCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21511], params.ptr, cast(void*)0);
	}
	void ClearReadContentComplete(ubyte LocalUserNum, OnlineSubsystem.EOnlineContentType ContentType, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadContentCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineContentType*)&params[1] = ContentType;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ReadContentCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21515], params.ptr, cast(void*)0);
	}
	bool ReadContentList(ubyte LocalUserNum, OnlineSubsystem.EOnlineContentType ContentType, int DeviceID)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineContentType*)&params[1] = ContentType;
		*cast(int*)&params[4] = DeviceID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21519], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void ClearContentList(ubyte LocalUserNum, OnlineSubsystem.EOnlineContentType ContentType)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineContentType*)&params[1] = ContentType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21524], params.ptr, cast(void*)0);
	}
	OnlineSubsystem.EOnlineEnumerationReadState GetContentList(ubyte LocalUserNum, OnlineSubsystem.EOnlineContentType ContentType, ScriptArray!(OnlineSubsystem.OnlineContent)* ContentList)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineContentType*)&params[1] = ContentType;
		*cast(ScriptArray!(OnlineSubsystem.OnlineContent)*)&params[4] = *ContentList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21527], params.ptr, cast(void*)0);
		*ContentList = *cast(ScriptArray!(OnlineSubsystem.OnlineContent)*)&params[4];
		return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)&params[16];
	}
	bool QueryAvailableDownloads(ubyte LocalUserNum, int CategoryMask)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = CategoryMask;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21533], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void AddQueryAvailableDownloadsComplete(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* QueryDownloadsDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = QueryDownloadsDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21538], params.ptr, cast(void*)0);
	}
	void ClearQueryAvailableDownloadsComplete(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* QueryDownloadsDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = QueryDownloadsDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21541], params.ptr, cast(void*)0);
	}
	void GetAvailableDownloadCounts(ubyte LocalUserNum, int* NewDownloads, int* TotalDownloads)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = *NewDownloads;
		*cast(int*)&params[8] = *TotalDownloads;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21544], params.ptr, cast(void*)0);
		*NewDownloads = *cast(int*)&params[4];
		*TotalDownloads = *cast(int*)&params[8];
	}
	bool ReadSaveGameData(ubyte LocalUserNum, int DeviceID, ScriptString FriendlyName, ScriptString Filename, ScriptString SaveFileName)
	{
		ubyte params[48];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = DeviceID;
		*cast(ScriptString*)&params[8] = FriendlyName;
		*cast(ScriptString*)&params[20] = Filename;
		*cast(ScriptString*)&params[32] = SaveFileName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21548], params.ptr, cast(void*)0);
		return *cast(bool*)&params[44];
	}
	bool GetSaveGameData(ubyte LocalUserNum, int DeviceID, ScriptString FriendlyName, ScriptString Filename, ScriptString SaveFileName, ScriptArray!(ubyte)* SaveGameData)
	{
		ubyte params[60];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = DeviceID;
		*cast(ScriptString*)&params[8] = FriendlyName;
		*cast(ScriptString*)&params[20] = Filename;
		*cast(ScriptString*)&params[32] = SaveFileName;
		*cast(ScriptArray!(ubyte)*)&params[44] = *SaveGameData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21555], params.ptr, cast(void*)0);
		*SaveGameData = *cast(ScriptArray!(ubyte)*)&params[44];
		return *cast(bool*)&params[56];
	}
	void AddReadSaveGameDataComplete(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadSaveGameDataCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ReadSaveGameDataCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21570], params.ptr, cast(void*)0);
	}
	void ClearReadSaveGameDataComplete(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadSaveGameDataCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = ReadSaveGameDataCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21573], params.ptr, cast(void*)0);
	}
	bool WriteSaveGameData(ubyte LocalUserNum, int DeviceID, ScriptString FriendlyName, ScriptString Filename, ScriptString SaveFileName, ScriptArray!(ubyte)* SaveGameData)
	{
		ubyte params[60];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = DeviceID;
		*cast(ScriptString*)&params[8] = FriendlyName;
		*cast(ScriptString*)&params[20] = Filename;
		*cast(ScriptString*)&params[32] = SaveFileName;
		*cast(ScriptArray!(ubyte)*)&params[44] = *SaveGameData;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21576], params.ptr, cast(void*)0);
		*SaveGameData = *cast(ScriptArray!(ubyte)*)&params[44];
		return *cast(bool*)&params[56];
	}
	void AddWriteSaveGameDataComplete(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* WriteSaveGameDataCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = WriteSaveGameDataCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21591], params.ptr, cast(void*)0);
	}
	void ClearWriteSaveGameDataComplete(ubyte LocalUserNum, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* WriteSaveGameDataCompleteDelegate)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = WriteSaveGameDataCompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21594], params.ptr, cast(void*)0);
	}
	bool DeleteSaveGame(ubyte LocalUserNum, int DeviceID, ScriptString FriendlyName, ScriptString Filename)
	{
		ubyte params[36];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = DeviceID;
		*cast(ScriptString*)&params[8] = FriendlyName;
		*cast(ScriptString*)&params[20] = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21597], params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	bool ClearSaveGames(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21603], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
