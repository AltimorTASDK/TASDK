module UnrealScript.Engine.OnlineEventsInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineProfileSettings;
import UnrealScript.Core.UInterface;
import UnrealScript.Engine.OnlinePlayerStorage;

extern(C++) interface OnlineEventsInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineEventsInterface")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUploadPlayerData;
			ScriptFunction mUploadGameplayEventsData;
			ScriptFunction mUpdatePlaylistPopulation;
		}
		public @property static final
		{
			ScriptFunction UploadPlayerData() { return mUploadPlayerData ? mUploadPlayerData : (mUploadPlayerData = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineEventsInterface.UploadPlayerData")); }
			ScriptFunction UploadGameplayEventsData() { return mUploadGameplayEventsData ? mUploadGameplayEventsData : (mUploadGameplayEventsData = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineEventsInterface.UploadGameplayEventsData")); }
			ScriptFunction UpdatePlaylistPopulation() { return mUpdatePlaylistPopulation ? mUpdatePlaylistPopulation : (mUpdatePlaylistPopulation = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineEventsInterface.UpdatePlaylistPopulation")); }
		}
	}
final:
	bool UploadPlayerData(OnlineSubsystem.UniqueNetId UniqueId, ScriptString PlayerNick, OnlineProfileSettings ProfileSettings, OnlinePlayerStorage PlayerStorage)
	{
		ubyte params[32];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = UniqueId;
		*cast(ScriptString*)&params[8] = PlayerNick;
		*cast(OnlineProfileSettings*)&params[20] = ProfileSettings;
		*cast(OnlinePlayerStorage*)&params[24] = PlayerStorage;
		(cast(ScriptObject)this).ProcessEvent(Functions.UploadPlayerData, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	bool UploadGameplayEventsData(OnlineSubsystem.UniqueNetId UniqueId, ScriptArray!(ubyte)* Payload)
	{
		ubyte params[24];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = UniqueId;
		*cast(ScriptArray!(ubyte)*)&params[8] = *Payload;
		(cast(ScriptObject)this).ProcessEvent(Functions.UploadGameplayEventsData, params.ptr, cast(void*)0);
		*Payload = *cast(ScriptArray!(ubyte)*)&params[8];
		return *cast(bool*)&params[20];
	}
	bool UpdatePlaylistPopulation(int PlaylistId, int NumPlayers)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = PlaylistId;
		*cast(int*)&params[4] = NumPlayers;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePlaylistPopulation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
