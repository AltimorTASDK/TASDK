module UnrealScript.Engine.GameViewportClient;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.UIInteraction;
import UnrealScript.Engine.Interaction;
import UnrealScript.Engine.Console;

extern(C++) interface GameViewportClient : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.GameViewportClient")); }
	private static __gshared GameViewportClient mDefaultProperties;
	@property final static GameViewportClient DefaultProperties() { mixin(MGDPC("GameViewportClient", "GameViewportClient Engine.Default__GameViewportClient")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mConsoleCommand;
			ScriptFunction mHandleInputKey;
			ScriptFunction mHandleInputAxis;
			ScriptFunction mHandleInputChar;
			ScriptFunction mGetViewportSize;
			ScriptFunction mIsFullScreenViewport;
			ScriptFunction mShouldForceFullscreenViewport;
			ScriptFunction mGetNumCustomInteractions;
			ScriptFunction mGetCustomInteractionClass;
			ScriptFunction mSetCustomInteractionObject;
			ScriptFunction mCreatePlayer;
			ScriptFunction mAddLocalPlayer;
			ScriptFunction mRemoveLocalPlayer;
			ScriptFunction mNotifyPlayerAdded;
			ScriptFunction mRemovePlayer;
			ScriptFunction mNotifyPlayerRemoved;
			ScriptFunction mFindPlayerByControllerId;
			ScriptFunction mCreateViewportConsole;
			ScriptFunction mInit;
			ScriptFunction mCreateInitialPlayer;
			ScriptFunction mInsertInteraction;
			ScriptFunction mGameSessionEnded;
			ScriptFunction mSetSplitscreenConfiguration;
			ScriptFunction mGetSplitscreenConfiguration;
			ScriptFunction mUpdateActiveSplitscreenType;
			ScriptFunction mLayoutPlayers;
			ScriptFunction mGetSubtitleRegion;
			ScriptFunction mConvertLocalPlayerToGamePlayerIndex;
			ScriptFunction mHasTopSafeZone;
			ScriptFunction mHasBottomSafeZone;
			ScriptFunction mHasLeftSafeZone;
			ScriptFunction mHasRightSafeZone;
			ScriptFunction mGetPixelSizeOfScreen;
			ScriptFunction mCalculateSafeZoneValues;
			ScriptFunction mCalculateDeadZoneForAllSides;
			ScriptFunction mTick;
			ScriptFunction mDrawTitleSafeArea;
			ScriptFunction mPostRender;
			ScriptFunction mDisplayProgressMessage;
			ScriptFunction mDrawTransition;
			ScriptFunction mDrawTransitionMessage;
			ScriptFunction mSetProgressMessage;
			ScriptFunction mNotifyConnectionError;
			ScriptFunction mSetProgressTime;
			ScriptFunction mClearProgressMessages;
			ScriptFunction mGetPlayerOwner;
			ScriptFunction mFixupOwnerReferences;
			ScriptFunction mOnPrimaryPlayerSwitch;
			ScriptFunction mBecomePrimaryPlayer;
			ScriptFunction mDebugSetUISystemEnabled;
		}
		public @property static final
		{
			ScriptFunction ConsoleCommand() { mixin(MGF("mConsoleCommand", "Function Engine.GameViewportClient.ConsoleCommand")); }
			ScriptFunction HandleInputKey() { mixin(MGF("mHandleInputKey", "Function Engine.GameViewportClient.HandleInputKey")); }
			ScriptFunction HandleInputAxis() { mixin(MGF("mHandleInputAxis", "Function Engine.GameViewportClient.HandleInputAxis")); }
			ScriptFunction HandleInputChar() { mixin(MGF("mHandleInputChar", "Function Engine.GameViewportClient.HandleInputChar")); }
			ScriptFunction GetViewportSize() { mixin(MGF("mGetViewportSize", "Function Engine.GameViewportClient.GetViewportSize")); }
			ScriptFunction IsFullScreenViewport() { mixin(MGF("mIsFullScreenViewport", "Function Engine.GameViewportClient.IsFullScreenViewport")); }
			ScriptFunction ShouldForceFullscreenViewport() { mixin(MGF("mShouldForceFullscreenViewport", "Function Engine.GameViewportClient.ShouldForceFullscreenViewport")); }
			ScriptFunction GetNumCustomInteractions() { mixin(MGF("mGetNumCustomInteractions", "Function Engine.GameViewportClient.GetNumCustomInteractions")); }
			ScriptFunction GetCustomInteractionClass() { mixin(MGF("mGetCustomInteractionClass", "Function Engine.GameViewportClient.GetCustomInteractionClass")); }
			ScriptFunction SetCustomInteractionObject() { mixin(MGF("mSetCustomInteractionObject", "Function Engine.GameViewportClient.SetCustomInteractionObject")); }
			ScriptFunction CreatePlayer() { mixin(MGF("mCreatePlayer", "Function Engine.GameViewportClient.CreatePlayer")); }
			ScriptFunction AddLocalPlayer() { mixin(MGF("mAddLocalPlayer", "Function Engine.GameViewportClient.AddLocalPlayer")); }
			ScriptFunction RemoveLocalPlayer() { mixin(MGF("mRemoveLocalPlayer", "Function Engine.GameViewportClient.RemoveLocalPlayer")); }
			ScriptFunction NotifyPlayerAdded() { mixin(MGF("mNotifyPlayerAdded", "Function Engine.GameViewportClient.NotifyPlayerAdded")); }
			ScriptFunction RemovePlayer() { mixin(MGF("mRemovePlayer", "Function Engine.GameViewportClient.RemovePlayer")); }
			ScriptFunction NotifyPlayerRemoved() { mixin(MGF("mNotifyPlayerRemoved", "Function Engine.GameViewportClient.NotifyPlayerRemoved")); }
			ScriptFunction FindPlayerByControllerId() { mixin(MGF("mFindPlayerByControllerId", "Function Engine.GameViewportClient.FindPlayerByControllerId")); }
			ScriptFunction CreateViewportConsole() { mixin(MGF("mCreateViewportConsole", "Function Engine.GameViewportClient.CreateViewportConsole")); }
			ScriptFunction Init() { mixin(MGF("mInit", "Function Engine.GameViewportClient.Init")); }
			ScriptFunction CreateInitialPlayer() { mixin(MGF("mCreateInitialPlayer", "Function Engine.GameViewportClient.CreateInitialPlayer")); }
			ScriptFunction InsertInteraction() { mixin(MGF("mInsertInteraction", "Function Engine.GameViewportClient.InsertInteraction")); }
			ScriptFunction GameSessionEnded() { mixin(MGF("mGameSessionEnded", "Function Engine.GameViewportClient.GameSessionEnded")); }
			ScriptFunction SetSplitscreenConfiguration() { mixin(MGF("mSetSplitscreenConfiguration", "Function Engine.GameViewportClient.SetSplitscreenConfiguration")); }
			ScriptFunction GetSplitscreenConfiguration() { mixin(MGF("mGetSplitscreenConfiguration", "Function Engine.GameViewportClient.GetSplitscreenConfiguration")); }
			ScriptFunction UpdateActiveSplitscreenType() { mixin(MGF("mUpdateActiveSplitscreenType", "Function Engine.GameViewportClient.UpdateActiveSplitscreenType")); }
			ScriptFunction LayoutPlayers() { mixin(MGF("mLayoutPlayers", "Function Engine.GameViewportClient.LayoutPlayers")); }
			ScriptFunction GetSubtitleRegion() { mixin(MGF("mGetSubtitleRegion", "Function Engine.GameViewportClient.GetSubtitleRegion")); }
			ScriptFunction ConvertLocalPlayerToGamePlayerIndex() { mixin(MGF("mConvertLocalPlayerToGamePlayerIndex", "Function Engine.GameViewportClient.ConvertLocalPlayerToGamePlayerIndex")); }
			ScriptFunction HasTopSafeZone() { mixin(MGF("mHasTopSafeZone", "Function Engine.GameViewportClient.HasTopSafeZone")); }
			ScriptFunction HasBottomSafeZone() { mixin(MGF("mHasBottomSafeZone", "Function Engine.GameViewportClient.HasBottomSafeZone")); }
			ScriptFunction HasLeftSafeZone() { mixin(MGF("mHasLeftSafeZone", "Function Engine.GameViewportClient.HasLeftSafeZone")); }
			ScriptFunction HasRightSafeZone() { mixin(MGF("mHasRightSafeZone", "Function Engine.GameViewportClient.HasRightSafeZone")); }
			ScriptFunction GetPixelSizeOfScreen() { mixin(MGF("mGetPixelSizeOfScreen", "Function Engine.GameViewportClient.GetPixelSizeOfScreen")); }
			ScriptFunction CalculateSafeZoneValues() { mixin(MGF("mCalculateSafeZoneValues", "Function Engine.GameViewportClient.CalculateSafeZoneValues")); }
			ScriptFunction CalculateDeadZoneForAllSides() { mixin(MGF("mCalculateDeadZoneForAllSides", "Function Engine.GameViewportClient.CalculateDeadZoneForAllSides")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function Engine.GameViewportClient.Tick")); }
			ScriptFunction DrawTitleSafeArea() { mixin(MGF("mDrawTitleSafeArea", "Function Engine.GameViewportClient.DrawTitleSafeArea")); }
			ScriptFunction PostRender() { mixin(MGF("mPostRender", "Function Engine.GameViewportClient.PostRender")); }
			ScriptFunction DisplayProgressMessage() { mixin(MGF("mDisplayProgressMessage", "Function Engine.GameViewportClient.DisplayProgressMessage")); }
			ScriptFunction DrawTransition() { mixin(MGF("mDrawTransition", "Function Engine.GameViewportClient.DrawTransition")); }
			ScriptFunction DrawTransitionMessage() { mixin(MGF("mDrawTransitionMessage", "Function Engine.GameViewportClient.DrawTransitionMessage")); }
			ScriptFunction SetProgressMessage() { mixin(MGF("mSetProgressMessage", "Function Engine.GameViewportClient.SetProgressMessage")); }
			ScriptFunction NotifyConnectionError() { mixin(MGF("mNotifyConnectionError", "Function Engine.GameViewportClient.NotifyConnectionError")); }
			ScriptFunction SetProgressTime() { mixin(MGF("mSetProgressTime", "Function Engine.GameViewportClient.SetProgressTime")); }
			ScriptFunction ClearProgressMessages() { mixin(MGF("mClearProgressMessages", "Function Engine.GameViewportClient.ClearProgressMessages")); }
			ScriptFunction GetPlayerOwner() { mixin(MGF("mGetPlayerOwner", "Function Engine.GameViewportClient.GetPlayerOwner")); }
			ScriptFunction FixupOwnerReferences() { mixin(MGF("mFixupOwnerReferences", "Function Engine.GameViewportClient.FixupOwnerReferences")); }
			ScriptFunction OnPrimaryPlayerSwitch() { mixin(MGF("mOnPrimaryPlayerSwitch", "Function Engine.GameViewportClient.OnPrimaryPlayerSwitch")); }
			ScriptFunction BecomePrimaryPlayer() { mixin(MGF("mBecomePrimaryPlayer", "Function Engine.GameViewportClient.BecomePrimaryPlayer")); }
			ScriptFunction DebugSetUISystemEnabled() { mixin(MGF("mDebugSetUISystemEnabled", "Function Engine.GameViewportClient.DebugSetUISystemEnabled")); }
		}
	}
	enum ESplitScreenType : ubyte
	{
		eSST_NONE = 0,
		eSST_2P_HORIZONTAL = 1,
		eSST_2P_VERTICAL = 2,
		eSST_3P_FAVOR_TOP = 3,
		eSST_3P_FAVOR_BOTTOM = 4,
		eSST_4P = 5,
		eSST_MAX = 6,
	}
	enum ESafeZoneType : ubyte
	{
		eSZ_TOP = 0,
		eSZ_BOTTOM = 1,
		eSZ_LEFT = 2,
		eSZ_RIGHT = 3,
		eSZ_MAX = 4,
	}
	struct TitleSafeZoneArea
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameViewportClient.TitleSafeZoneArea")); }
		@property final auto ref
		{
			float MaxPercentX() { mixin(MGPS("float", 0)); }
			float RecommendedPercentX() { mixin(MGPS("float", 8)); }
			float MaxPercentY() { mixin(MGPS("float", 4)); }
			float RecommendedPercentY() { mixin(MGPS("float", 12)); }
		}
	}
	struct PerPlayerSplitscreenData
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameViewportClient.PerPlayerSplitscreenData")); }
		@property final auto ref
		{
			float OriginY() { mixin(MGPS("float", 12)); }
			float OriginX() { mixin(MGPS("float", 8)); }
			float SizeY() { mixin(MGPS("float", 4)); }
			float SizeX() { mixin(MGPS("float", 0)); }
		}
	}
	struct SplitscreenData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameViewportClient.SplitscreenData")); }
		@property final auto ref ScriptArray!(GameViewportClient.PerPlayerSplitscreenData) PlayerData() { mixin(MGPS("ScriptArray!(GameViewportClient.PerPlayerSplitscreenData)", 0)); }
	}
	struct DebugDisplayProperty
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.GameViewportClient.DebugDisplayProperty")); }
		@property final
		{
			auto ref
			{
				ScriptName PropertyName() { mixin(MGPS("ScriptName", 4)); }
				UObject Obj() { mixin(MGPS("UObject", 0)); }
			}
			bool bSpecialProperty() { mixin(MGBPS(12, 0x1)); }
			bool bSpecialProperty(bool val) { mixin(MSBPS(12, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			Console ViewportConsole() { mixin(MGPC("Console", 96)); }
			UIInteraction UIController() { mixin(MGPC("UIInteraction", 92)); }
			GameViewportClient.ESplitScreenType ActiveSplitscreenType() { mixin(MGPC("GameViewportClient.ESplitScreenType", 201)); }
			GameViewportClient.ESplitScreenType DesiredSplitscreenType() { mixin(MGPC("GameViewportClient.ESplitScreenType", 200)); }
			ScriptClass UIControllerClass() { mixin(MGPC("ScriptClass", 88)); }
			ScriptArray!(Interaction) GlobalInteractions() { mixin(MGPC("ScriptArray!(Interaction)", 76)); }
			GameViewportClient.ESplitScreenType Default2PSplitType() { mixin(MGPC("GameViewportClient.ESplitScreenType", 202)); }
			GameViewportClient.ESplitScreenType Default3PSplitType() { mixin(MGPC("GameViewportClient.ESplitScreenType", 203)); }
			ScriptArray!(GameViewportClient.SplitscreenData) SplitscreenInfo() { mixin(MGPC("ScriptArray!(GameViewportClient.SplitscreenData)", 188)); }
			GameViewportClient.TitleSafeZoneArea TitleSafeZone() { mixin(MGPC("GameViewportClient.TitleSafeZoneArea", 172)); }
			float ProgressTimeOut() { mixin(MGPC("float", 228)); }
			float ProgressFadeTime() { mixin(MGPC("float", 232)); }
			ScriptString ProgressMessage() { mixin(MGPC("ScriptString", 204)); }
			ScriptString LoadingMessage() { mixin(MGPC("ScriptString", 108)); }
			ScriptString SavingMessage() { mixin(MGPC("ScriptString", 120)); }
			ScriptString ConnectingMessage() { mixin(MGPC("ScriptString", 132)); }
			ScriptString PrecachingMessage() { mixin(MGPC("ScriptString", 156)); }
			ScriptString PausedMessage() { mixin(MGPC("ScriptString", 144)); }
			Pointer VfTable_FViewportClient() { mixin(MGPC("Pointer", 60)); }
			Pointer VfTable_FExec() { mixin(MGPC("Pointer", 64)); }
			Pointer Viewport() { mixin(MGPC("Pointer", 68)); }
			Pointer ViewportFrame() { mixin(MGPC("Pointer", 72)); }
			QWord ShowFlags() { mixin(MGPC("QWord", 100)); }
			ScriptArray!(GameViewportClient.DebugDisplayProperty) DebugProperties() { mixin(MGPC("ScriptArray!(GameViewportClient.DebugDisplayProperty)", 236)); }
			Pointer ScaleformInteraction() { mixin(MGPC("Pointer", 248)); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__HandleInputKey__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__HandleInputAxis__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__HandleInputChar__Delegate'!
		}
		bool bDebugNoGFxUI() { mixin(MGBPC(168, 0x80)); }
		bool bDebugNoGFxUI(bool val) { mixin(MSBPC(168, 0x80)); }
		bool bShowTitleSafeZone() { mixin(MGBPC(168, 0x1)); }
		bool bShowTitleSafeZone(bool val) { mixin(MSBPC(168, 0x1)); }
		bool bDisplayingUIMouseCursor() { mixin(MGBPC(168, 0x2)); }
		bool bDisplayingUIMouseCursor(bool val) { mixin(MSBPC(168, 0x2)); }
		bool bUIMouseCaptureOverride() { mixin(MGBPC(168, 0x4)); }
		bool bUIMouseCaptureOverride(bool val) { mixin(MSBPC(168, 0x4)); }
		bool bOverrideDiffuseAndSpecular() { mixin(MGBPC(168, 0x8)); }
		bool bOverrideDiffuseAndSpecular(bool val) { mixin(MSBPC(168, 0x8)); }
		bool bIsPlayInEditorViewport() { mixin(MGBPC(168, 0x10)); }
		bool bIsPlayInEditorViewport(bool val) { mixin(MSBPC(168, 0x10)); }
		bool bShowSystemMouseCursor() { mixin(MGBPC(168, 0x20)); }
		bool bShowSystemMouseCursor(bool val) { mixin(MSBPC(168, 0x20)); }
		bool bDisableWorldRendering() { mixin(MGBPC(168, 0x40)); }
		bool bDisableWorldRendering(bool val) { mixin(MSBPC(168, 0x40)); }
		bool bUseHardwareCursorWhenWindowed() { mixin(MGBPC(168, 0x100)); }
		bool bUseHardwareCursorWhenWindowed(bool val) { mixin(MSBPC(168, 0x100)); }
	}
final:
	ScriptString ConsoleCommand(ScriptString Command)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsoleCommand, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	bool HandleInputKey(int ControllerId, ScriptName Key, UObject.EInputEvent EventType, float AmountDepressed, bool* bGamepad = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(UObject.EInputEvent*)&params[12] = EventType;
		*cast(float*)&params[16] = AmountDepressed;
		if (bGamepad !is null)
			*cast(bool*)&params[20] = *bGamepad;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleInputKey, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool HandleInputAxis(int ControllerId, ScriptName Key, float Delta, float DeltaTime, bool bGamepad)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(float*)&params[12] = Delta;
		*cast(float*)&params[16] = DeltaTime;
		*cast(bool*)&params[20] = bGamepad;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleInputAxis, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool HandleInputChar(int ControllerId, ScriptString Unicode)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptString*)&params[4] = Unicode;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleInputChar, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void GetViewportSize(ref UObject.Vector2D out_ViewportSize)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = out_ViewportSize;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetViewportSize, params.ptr, cast(void*)0);
		out_ViewportSize = *cast(UObject.Vector2D*)params.ptr;
	}
	bool IsFullScreenViewport()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFullScreenViewport, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ShouldForceFullscreenViewport()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldForceFullscreenViewport, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetNumCustomInteractions()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumCustomInteractions, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptClass GetCustomInteractionClass(int InIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCustomInteractionClass, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	void SetCustomInteractionObject(Interaction InInteraction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Interaction*)params.ptr = InInteraction;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCustomInteractionObject, params.ptr, cast(void*)0);
	}
	LocalPlayer CreatePlayer(int ControllerId, ref ScriptString OutError, bool bSpawnActor)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptString*)&params[4] = OutError;
		*cast(bool*)&params[16] = bSpawnActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreatePlayer, params.ptr, cast(void*)0);
		OutError = *cast(ScriptString*)&params[4];
		return *cast(LocalPlayer*)&params[20];
	}
	int AddLocalPlayer(LocalPlayer NewPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddLocalPlayer, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int RemoveLocalPlayer(LocalPlayer ExistingPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = ExistingPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveLocalPlayer, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void NotifyPlayerAdded(int PlayerIndex, LocalPlayer AddedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = AddedPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPlayerAdded, params.ptr, cast(void*)0);
	}
	bool RemovePlayer(LocalPlayer ExPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = ExPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemovePlayer, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void NotifyPlayerRemoved(int PlayerIndex, LocalPlayer RemovedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = RemovedPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPlayerRemoved, params.ptr, cast(void*)0);
	}
	LocalPlayer FindPlayerByControllerId(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPlayerByControllerId, params.ptr, cast(void*)0);
		return *cast(LocalPlayer*)&params[4];
	}
	bool CreateViewportConsole(ScriptClass vpcClass, ref ScriptString OutError)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = vpcClass;
		*cast(ScriptString*)&params[4] = OutError;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateViewportConsole, params.ptr, cast(void*)0);
		OutError = *cast(ScriptString*)&params[4];
		return *cast(bool*)&params[16];
	}
	bool Init(ref ScriptString OutError)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = OutError;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
		OutError = *cast(ScriptString*)params.ptr;
		return *cast(bool*)&params[12];
	}
	bool CreateInitialPlayer(ref ScriptString OutError)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = OutError;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateInitialPlayer, params.ptr, cast(void*)0);
		OutError = *cast(ScriptString*)params.ptr;
		return *cast(bool*)&params[12];
	}
	int InsertInteraction(Interaction NewInteraction, int* InIndex = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Interaction*)params.ptr = NewInteraction;
		if (InIndex !is null)
			*cast(int*)&params[4] = *InIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.InsertInteraction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void GameSessionEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GameSessionEnded, cast(void*)0, cast(void*)0);
	}
	void SetSplitscreenConfiguration(GameViewportClient.ESplitScreenType SplitType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(GameViewportClient.ESplitScreenType*)params.ptr = SplitType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSplitscreenConfiguration, params.ptr, cast(void*)0);
	}
	GameViewportClient.ESplitScreenType GetSplitscreenConfiguration()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSplitscreenConfiguration, params.ptr, cast(void*)0);
		return *cast(GameViewportClient.ESplitScreenType*)params.ptr;
	}
	void UpdateActiveSplitscreenType()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateActiveSplitscreenType, cast(void*)0, cast(void*)0);
	}
	void LayoutPlayers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LayoutPlayers, cast(void*)0, cast(void*)0);
	}
	void GetSubtitleRegion(ref UObject.Vector2D MinPos, ref UObject.Vector2D MaxPos)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = MinPos;
		*cast(UObject.Vector2D*)&params[8] = MaxPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSubtitleRegion, params.ptr, cast(void*)0);
		MinPos = *cast(UObject.Vector2D*)params.ptr;
		MaxPos = *cast(UObject.Vector2D*)&params[8];
	}
	int ConvertLocalPlayerToGamePlayerIndex(LocalPlayer LPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = LPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConvertLocalPlayerToGamePlayerIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	bool HasTopSafeZone(int LocalPlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasTopSafeZone, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool HasBottomSafeZone(int LocalPlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasBottomSafeZone, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool HasLeftSafeZone(int LocalPlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasLeftSafeZone, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool HasRightSafeZone(int LocalPlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasRightSafeZone, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GetPixelSizeOfScreen(ref float out_Width, ref float out_Height, Canvas pCanvas, int LocalPlayerIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = out_Width;
		*cast(float*)&params[4] = out_Height;
		*cast(Canvas*)&params[8] = pCanvas;
		*cast(int*)&params[12] = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPixelSizeOfScreen, params.ptr, cast(void*)0);
		out_Width = *cast(float*)params.ptr;
		out_Height = *cast(float*)&params[4];
	}
	void CalculateSafeZoneValues(ref float out_Horizontal, ref float out_Vertical, Canvas pCanvas, int LocalPlayerIndex, bool bUseMaxPercent)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = out_Horizontal;
		*cast(float*)&params[4] = out_Vertical;
		*cast(Canvas*)&params[8] = pCanvas;
		*cast(int*)&params[12] = LocalPlayerIndex;
		*cast(bool*)&params[16] = bUseMaxPercent;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculateSafeZoneValues, params.ptr, cast(void*)0);
		out_Horizontal = *cast(float*)params.ptr;
		out_Vertical = *cast(float*)&params[4];
	}
	bool CalculateDeadZoneForAllSides(LocalPlayer LPlayer, Canvas pCanvas, ref float fTopSafeZone, ref float fBottomSafeZone, ref float fLeftSafeZone, ref float fRightSafeZone, bool* bUseMaxPercent = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = LPlayer;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(float*)&params[8] = fTopSafeZone;
		*cast(float*)&params[12] = fBottomSafeZone;
		*cast(float*)&params[16] = fLeftSafeZone;
		*cast(float*)&params[20] = fRightSafeZone;
		if (bUseMaxPercent !is null)
			*cast(bool*)&params[24] = *bUseMaxPercent;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculateDeadZoneForAllSides, params.ptr, cast(void*)0);
		fTopSafeZone = *cast(float*)&params[8];
		fBottomSafeZone = *cast(float*)&params[12];
		fLeftSafeZone = *cast(float*)&params[16];
		fRightSafeZone = *cast(float*)&params[20];
		return *cast(bool*)&params[28];
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void DrawTitleSafeArea(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawTitleSafeArea, params.ptr, cast(void*)0);
	}
	void PostRender(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRender, params.ptr, cast(void*)0);
	}
	void DisplayProgressMessage(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayProgressMessage, params.ptr, cast(void*)0);
	}
	void DrawTransition(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawTransition, params.ptr, cast(void*)0);
	}
	void DrawTransitionMessage(Canvas pCanvas, ScriptString Message)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(ScriptString*)&params[4] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawTransitionMessage, params.ptr, cast(void*)0);
	}
	void SetProgressMessage(PlayerController.EProgressMessageType MessageType, ScriptString Message, ScriptString* Title = null, bool* bIgnoreFutureNetworkMessages = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController.EProgressMessageType*)params.ptr = MessageType;
		*cast(ScriptString*)&params[4] = Message;
		if (Title !is null)
			*cast(ScriptString*)&params[16] = *Title;
		if (bIgnoreFutureNetworkMessages !is null)
			*cast(bool*)&params[28] = *bIgnoreFutureNetworkMessages;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetProgressMessage, params.ptr, cast(void*)0);
	}
	void NotifyConnectionError(ScriptString* Message = null, ScriptString* Title = null)
	{
		ubyte params[24];
		params[] = 0;
		if (Message !is null)
			*cast(ScriptString*)params.ptr = *Message;
		if (Title !is null)
			*cast(ScriptString*)&params[12] = *Title;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyConnectionError, params.ptr, cast(void*)0);
	}
	void SetProgressTime(float T)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetProgressTime, params.ptr, cast(void*)0);
	}
	void ClearProgressMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearProgressMessages, cast(void*)0, cast(void*)0);
	}
	LocalPlayer GetPlayerOwner(int PlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerOwner, params.ptr, cast(void*)0);
		return *cast(LocalPlayer*)&params[4];
	}
	void FixupOwnerReferences()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FixupOwnerReferences, cast(void*)0, cast(void*)0);
	}
	void OnPrimaryPlayerSwitch(LocalPlayer OldPrimaryPlayer, LocalPlayer NewPrimaryPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = OldPrimaryPlayer;
		*cast(LocalPlayer*)&params[4] = NewPrimaryPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPrimaryPlayerSwitch, params.ptr, cast(void*)0);
	}
	void BecomePrimaryPlayer(int PlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.BecomePrimaryPlayer, params.ptr, cast(void*)0);
	}
	void DebugSetUISystemEnabled(bool bOldUISystemActive, bool bGFxUISystemActive)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOldUISystemActive;
		*cast(bool*)&params[4] = bGFxUISystemActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.DebugSetUISystemEnabled, params.ptr, cast(void*)0);
	}
}
