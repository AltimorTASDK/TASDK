module UnrealScript.Engine.GameUISceneClient;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Player;
import UnrealScript.Engine.UISceneClient;

extern(C++) interface GameUISceneClient : UISceneClient
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.GameUISceneClient")()); }
	private static __gshared GameUISceneClient mDefaultProperties;
	@property final static GameUISceneClient DefaultProperties() { mixin(MGDPC!(GameUISceneClient, "GameUISceneClient Engine.Default__GameUISceneClient")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetCurrentNetMode;
			ScriptFunction mRequestInputProcessingUpdate;
			ScriptFunction mCanUnpauseInternalUI;
			ScriptFunction mPauseGame;
			ScriptFunction mNotifyClientTravel;
			ScriptFunction mNotifyGameSessionEnded;
			ScriptFunction mNotifyPlayerAdded;
			ScriptFunction mNotifyPlayerRemoved;
			ScriptFunction mFindLocalPlayerIndex;
		}
		public @property static final
		{
			ScriptFunction GetCurrentNetMode() { mixin(MGF!("mGetCurrentNetMode", "Function Engine.GameUISceneClient.GetCurrentNetMode")()); }
			ScriptFunction RequestInputProcessingUpdate() { mixin(MGF!("mRequestInputProcessingUpdate", "Function Engine.GameUISceneClient.RequestInputProcessingUpdate")()); }
			ScriptFunction CanUnpauseInternalUI() { mixin(MGF!("mCanUnpauseInternalUI", "Function Engine.GameUISceneClient.CanUnpauseInternalUI")()); }
			ScriptFunction PauseGame() { mixin(MGF!("mPauseGame", "Function Engine.GameUISceneClient.PauseGame")()); }
			ScriptFunction NotifyClientTravel() { mixin(MGF!("mNotifyClientTravel", "Function Engine.GameUISceneClient.NotifyClientTravel")()); }
			ScriptFunction NotifyGameSessionEnded() { mixin(MGF!("mNotifyGameSessionEnded", "Function Engine.GameUISceneClient.NotifyGameSessionEnded")()); }
			ScriptFunction NotifyPlayerAdded() { mixin(MGF!("mNotifyPlayerAdded", "Function Engine.GameUISceneClient.NotifyPlayerAdded")()); }
			ScriptFunction NotifyPlayerRemoved() { mixin(MGF!("mNotifyPlayerRemoved", "Function Engine.GameUISceneClient.NotifyPlayerRemoved")()); }
			ScriptFunction FindLocalPlayerIndex() { mixin(MGF!("mFindLocalPlayerIndex", "Function Engine.GameUISceneClient.FindLocalPlayerIndex")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) NavAliases() { mixin(MGPC!("ScriptArray!(ScriptName)", 300)()); }
			ScriptArray!(ScriptName) AxisInputKeys() { mixin(MGPC!("ScriptArray!(ScriptName)", 312)()); }
			UObject.Map_Mirror InitialPressedKeys() { mixin(MGPC!("UObject.Map_Mirror", 236)()); }
			UObject.IntPoint DoubleClickStartPosition() { mixin(MGPC!("UObject.IntPoint", 228)()); }
			UObject.Double DoubleClickStartTime() { mixin(MGPC!("UObject.Double", 220)()); }
			float LatestDeltaTime() { mixin(MGPC!("float", 216)()); }
		}
		bool bCaptureUnprocessedInput() { mixin(MGBPC!(296, 0x10)()); }
		bool bCaptureUnprocessedInput(bool val) { mixin(MSBPC!(296, 0x10)()); }
		bool bRenderDebugInfo() { mixin(MGBPC!(296, 0x8)()); }
		bool bRenderDebugInfo(bool val) { mixin(MSBPC!(296, 0x8)()); }
		bool bEnableDebugInput() { mixin(MGBPC!(296, 0x4)()); }
		bool bEnableDebugInput(bool val) { mixin(MSBPC!(296, 0x4)()); }
		bool bUpdateSceneViewportSizes() { mixin(MGBPC!(296, 0x2)()); }
		bool bUpdateSceneViewportSizes(bool val) { mixin(MSBPC!(296, 0x2)()); }
		bool bUpdateInputProcessingStatus() { mixin(MGBPC!(296, 0x1)()); }
		bool bUpdateInputProcessingStatus(bool val) { mixin(MSBPC!(296, 0x1)()); }
	}
final:
	static WorldInfo.ENetMode GetCurrentNetMode()
	{
		ubyte params[1];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetCurrentNetMode, params.ptr, cast(void*)0);
		return *cast(WorldInfo.ENetMode*)params.ptr;
	}
	void RequestInputProcessingUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestInputProcessingUpdate, cast(void*)0, cast(void*)0);
	}
	bool CanUnpauseInternalUI()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanUnpauseInternalUI, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PauseGame(bool bDesiredPauseState, int* PlayerIndex = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bDesiredPauseState;
		if (PlayerIndex !is null)
			*cast(int*)&params[4] = *PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PauseGame, params.ptr, cast(void*)0);
	}
	void NotifyClientTravel(PlayerController TravellingPlayer, ScriptString TravelURL, Actor.ETravelType TravelType, bool bIsSeamlessTravel)
	{
		ubyte params[24];
		params[] = 0;
		*cast(PlayerController*)params.ptr = TravellingPlayer;
		*cast(ScriptString*)&params[4] = TravelURL;
		*cast(Actor.ETravelType*)&params[16] = TravelType;
		*cast(bool*)&params[20] = bIsSeamlessTravel;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyClientTravel, params.ptr, cast(void*)0);
	}
	void NotifyGameSessionEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyGameSessionEnded, cast(void*)0, cast(void*)0);
	}
	void NotifyPlayerAdded(int PlayerIndex, LocalPlayer AddedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = AddedPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPlayerAdded, params.ptr, cast(void*)0);
	}
	void NotifyPlayerRemoved(int PlayerIndex, LocalPlayer RemovedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = RemovedPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPlayerRemoved, params.ptr, cast(void*)0);
	}
	int FindLocalPlayerIndex(Player P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Player*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindLocalPlayerIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
}
