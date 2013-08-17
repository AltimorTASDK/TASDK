module UnrealScript.Engine.OnlineContentInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineContentInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlineContentInterface")()); }
	private static __gshared OnlineContentInterface mDefaultProperties;
	@property final static OnlineContentInterface DefaultProperties() { mixin(MGDPC!(OnlineContentInterface, "OnlineContentInterface Engine.Default__OnlineContentInterface")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnContentChange;
			ScriptFunction mOnWriteSaveGameDataComplete;
			ScriptFunction mOnReadSaveGameDataComplete;
			ScriptFunction mOnQueryAvailableDownloadsComplete;
			ScriptFunction mOnReadContentComplete;
			ScriptFunction mAddContentChangeDelegate;
			ScriptFunction mClearContentChangeDelegate;
			ScriptFunction mAddReadContentComplete;
			ScriptFunction mClearReadContentComplete;
			ScriptFunction mReadContentList;
			ScriptFunction mClearContentList;
			ScriptFunction mGetContentList;
			ScriptFunction mQueryAvailableDownloads;
			ScriptFunction mAddQueryAvailableDownloadsComplete;
			ScriptFunction mClearQueryAvailableDownloadsComplete;
			ScriptFunction mGetAvailableDownloadCounts;
			ScriptFunction mReadSaveGameData;
			ScriptFunction mGetSaveGameData;
			ScriptFunction mAddReadSaveGameDataComplete;
			ScriptFunction mClearReadSaveGameDataComplete;
			ScriptFunction mWriteSaveGameData;
			ScriptFunction mAddWriteSaveGameDataComplete;
			ScriptFunction mClearWriteSaveGameDataComplete;
			ScriptFunction mDeleteSaveGame;
			ScriptFunction mClearSaveGames;
		}
		public @property static final
		{
			ScriptFunction OnContentChange() { mixin(MGF!("mOnContentChange", "Function Engine.OnlineContentInterface.OnContentChange")()); }
			ScriptFunction OnWriteSaveGameDataComplete() { mixin(MGF!("mOnWriteSaveGameDataComplete", "Function Engine.OnlineContentInterface.OnWriteSaveGameDataComplete")()); }
			ScriptFunction OnReadSaveGameDataComplete() { mixin(MGF!("mOnReadSaveGameDataComplete", "Function Engine.OnlineContentInterface.OnReadSaveGameDataComplete")()); }
			ScriptFunction OnQueryAvailableDownloadsComplete() { mixin(MGF!("mOnQueryAvailableDownloadsComplete", "Function Engine.OnlineContentInterface.OnQueryAvailableDownloadsComplete")()); }
			ScriptFunction OnReadContentComplete() { mixin(MGF!("mOnReadContentComplete", "Function Engine.OnlineContentInterface.OnReadContentComplete")()); }
			ScriptFunction AddContentChangeDelegate() { mixin(MGF!("mAddContentChangeDelegate", "Function Engine.OnlineContentInterface.AddContentChangeDelegate")()); }
			ScriptFunction ClearContentChangeDelegate() { mixin(MGF!("mClearContentChangeDelegate", "Function Engine.OnlineContentInterface.ClearContentChangeDelegate")()); }
			ScriptFunction AddReadContentComplete() { mixin(MGF!("mAddReadContentComplete", "Function Engine.OnlineContentInterface.AddReadContentComplete")()); }
			ScriptFunction ClearReadContentComplete() { mixin(MGF!("mClearReadContentComplete", "Function Engine.OnlineContentInterface.ClearReadContentComplete")()); }
			ScriptFunction ReadContentList() { mixin(MGF!("mReadContentList", "Function Engine.OnlineContentInterface.ReadContentList")()); }
			ScriptFunction ClearContentList() { mixin(MGF!("mClearContentList", "Function Engine.OnlineContentInterface.ClearContentList")()); }
			ScriptFunction GetContentList() { mixin(MGF!("mGetContentList", "Function Engine.OnlineContentInterface.GetContentList")()); }
			ScriptFunction QueryAvailableDownloads() { mixin(MGF!("mQueryAvailableDownloads", "Function Engine.OnlineContentInterface.QueryAvailableDownloads")()); }
			ScriptFunction AddQueryAvailableDownloadsComplete() { mixin(MGF!("mAddQueryAvailableDownloadsComplete", "Function Engine.OnlineContentInterface.AddQueryAvailableDownloadsComplete")()); }
			ScriptFunction ClearQueryAvailableDownloadsComplete() { mixin(MGF!("mClearQueryAvailableDownloadsComplete", "Function Engine.OnlineContentInterface.ClearQueryAvailableDownloadsComplete")()); }
			ScriptFunction GetAvailableDownloadCounts() { mixin(MGF!("mGetAvailableDownloadCounts", "Function Engine.OnlineContentInterface.GetAvailableDownloadCounts")()); }
			ScriptFunction ReadSaveGameData() { mixin(MGF!("mReadSaveGameData", "Function Engine.OnlineContentInterface.ReadSaveGameData")()); }
			ScriptFunction GetSaveGameData() { mixin(MGF!("mGetSaveGameData", "Function Engine.OnlineContentInterface.GetSaveGameData")()); }
			ScriptFunction AddReadSaveGameDataComplete() { mixin(MGF!("mAddReadSaveGameDataComplete", "Function Engine.OnlineContentInterface.AddReadSaveGameDataComplete")()); }
			ScriptFunction ClearReadSaveGameDataComplete() { mixin(MGF!("mClearReadSaveGameDataComplete", "Function Engine.OnlineContentInterface.ClearReadSaveGameDataComplete")()); }
			ScriptFunction WriteSaveGameData() { mixin(MGF!("mWriteSaveGameData", "Function Engine.OnlineContentInterface.WriteSaveGameData")()); }
			ScriptFunction AddWriteSaveGameDataComplete() { mixin(MGF!("mAddWriteSaveGameDataComplete", "Function Engine.OnlineContentInterface.AddWriteSaveGameDataComplete")()); }
			ScriptFunction ClearWriteSaveGameDataComplete() { mixin(MGF!("mClearWriteSaveGameDataComplete", "Function Engine.OnlineContentInterface.ClearWriteSaveGameDataComplete")()); }
			ScriptFunction DeleteSaveGame() { mixin(MGF!("mDeleteSaveGame", "Function Engine.OnlineContentInterface.DeleteSaveGame")()); }
			ScriptFunction ClearSaveGames() { mixin(MGF!("mClearSaveGames", "Function Engine.OnlineContentInterface.ClearSaveGames")()); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnWriteSaveGameDataComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadSaveGameDataComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnQueryAvailableDownloadsComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadContentComplete__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnContentChange__Delegate'!
	}
final:
	void OnContentChange()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnContentChange, cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.OnWriteSaveGameDataComplete, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadSaveGameDataComplete, params.ptr, cast(void*)0);
	}
	void OnQueryAvailableDownloadsComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnQueryAvailableDownloadsComplete, params.ptr, cast(void*)0);
	}
	void OnReadContentComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadContentComplete, params.ptr, cast(void*)0);
	}
	void AddContentChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ContentDelegate, ubyte* LocalUserNum = null)
	{
		ubyte params[13];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ContentDelegate;
		if (LocalUserNum !is null)
			params[12] = *LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddContentChangeDelegate, params.ptr, cast(void*)0);
	}
	void ClearContentChangeDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ContentDelegate, ubyte* LocalUserNum = null)
	{
		ubyte params[13];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ContentDelegate;
		if (LocalUserNum !is null)
			params[12] = *LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearContentChangeDelegate, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadContentComplete, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadContentComplete, params.ptr, cast(void*)0);
	}
	bool ReadContentList(ubyte LocalUserNum, OnlineSubsystem.EOnlineContentType ContentType, int* DeviceID = null)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineContentType*)&params[1] = ContentType;
		if (DeviceID !is null)
			*cast(int*)&params[4] = *DeviceID;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadContentList, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void ClearContentList(ubyte LocalUserNum, OnlineSubsystem.EOnlineContentType ContentType)
	{
		ubyte params[2];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineContentType*)&params[1] = ContentType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearContentList, params.ptr, cast(void*)0);
	}
	OnlineSubsystem.EOnlineEnumerationReadState GetContentList(ubyte LocalUserNum, OnlineSubsystem.EOnlineContentType ContentType, ref ScriptArray!(OnlineSubsystem.OnlineContent) ContentList)
	{
		ubyte params[17];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineContentType*)&params[1] = ContentType;
		*cast(ScriptArray!(OnlineSubsystem.OnlineContent)*)&params[4] = ContentList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetContentList, params.ptr, cast(void*)0);
		ContentList = *cast(ScriptArray!(OnlineSubsystem.OnlineContent)*)&params[4];
		return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)&params[16];
	}
	bool QueryAvailableDownloads(ubyte LocalUserNum, int* CategoryMask = null)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		if (CategoryMask !is null)
			*cast(int*)&params[4] = *CategoryMask;
		(cast(ScriptObject)this).ProcessEvent(Functions.QueryAvailableDownloads, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.AddQueryAvailableDownloadsComplete, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearQueryAvailableDownloadsComplete, params.ptr, cast(void*)0);
	}
	void GetAvailableDownloadCounts(ubyte LocalUserNum, ref int NewDownloads, ref int TotalDownloads)
	{
		ubyte params[12];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = NewDownloads;
		*cast(int*)&params[8] = TotalDownloads;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAvailableDownloadCounts, params.ptr, cast(void*)0);
		NewDownloads = *cast(int*)&params[4];
		TotalDownloads = *cast(int*)&params[8];
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadSaveGameData, params.ptr, cast(void*)0);
		return *cast(bool*)&params[44];
	}
	bool GetSaveGameData(ubyte LocalUserNum, int DeviceID, ScriptString FriendlyName, ScriptString Filename, ScriptString SaveFileName, ref ScriptArray!(ubyte) SaveGameData)
	{
		ubyte params[60];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = DeviceID;
		*cast(ScriptString*)&params[8] = FriendlyName;
		*cast(ScriptString*)&params[20] = Filename;
		*cast(ScriptString*)&params[32] = SaveFileName;
		*cast(ScriptArray!(ubyte)*)&params[44] = SaveGameData;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSaveGameData, params.ptr, cast(void*)0);
		SaveGameData = *cast(ScriptArray!(ubyte)*)&params[44];
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
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadSaveGameDataComplete, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadSaveGameDataComplete, params.ptr, cast(void*)0);
	}
	bool WriteSaveGameData(ubyte LocalUserNum, int DeviceID, ScriptString FriendlyName, ScriptString Filename, ScriptString SaveFileName, ref in ScriptArray!(ubyte) SaveGameData)
	{
		ubyte params[60];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = DeviceID;
		*cast(ScriptString*)&params[8] = FriendlyName;
		*cast(ScriptString*)&params[20] = Filename;
		*cast(ScriptString*)&params[32] = SaveFileName;
		*cast(ScriptArray!(ubyte)*)&params[44] = cast(ScriptArray!(ubyte))SaveGameData;
		(cast(ScriptObject)this).ProcessEvent(Functions.WriteSaveGameData, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.AddWriteSaveGameDataComplete, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearWriteSaveGameDataComplete, params.ptr, cast(void*)0);
	}
	bool DeleteSaveGame(ubyte LocalUserNum, int DeviceID, ScriptString FriendlyName, ScriptString Filename)
	{
		ubyte params[36];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(int*)&params[4] = DeviceID;
		*cast(ScriptString*)&params[8] = FriendlyName;
		*cast(ScriptString*)&params[20] = Filename;
		(cast(ScriptObject)this).ProcessEvent(Functions.DeleteSaveGame, params.ptr, cast(void*)0);
		return *cast(bool*)&params[32];
	}
	bool ClearSaveGames(ubyte LocalUserNum)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSaveGames, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
