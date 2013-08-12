module UnrealScript.Engine.GameViewportClient;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.GameViewportClient")); }
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
			ScriptFunction ConsoleCommand() { return mConsoleCommand ? mConsoleCommand : (mConsoleCommand = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.ConsoleCommand")); }
			ScriptFunction HandleInputKey() { return mHandleInputKey ? mHandleInputKey : (mHandleInputKey = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.HandleInputKey")); }
			ScriptFunction HandleInputAxis() { return mHandleInputAxis ? mHandleInputAxis : (mHandleInputAxis = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.HandleInputAxis")); }
			ScriptFunction HandleInputChar() { return mHandleInputChar ? mHandleInputChar : (mHandleInputChar = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.HandleInputChar")); }
			ScriptFunction GetViewportSize() { return mGetViewportSize ? mGetViewportSize : (mGetViewportSize = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.GetViewportSize")); }
			ScriptFunction IsFullScreenViewport() { return mIsFullScreenViewport ? mIsFullScreenViewport : (mIsFullScreenViewport = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.IsFullScreenViewport")); }
			ScriptFunction ShouldForceFullscreenViewport() { return mShouldForceFullscreenViewport ? mShouldForceFullscreenViewport : (mShouldForceFullscreenViewport = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.ShouldForceFullscreenViewport")); }
			ScriptFunction GetNumCustomInteractions() { return mGetNumCustomInteractions ? mGetNumCustomInteractions : (mGetNumCustomInteractions = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.GetNumCustomInteractions")); }
			ScriptFunction GetCustomInteractionClass() { return mGetCustomInteractionClass ? mGetCustomInteractionClass : (mGetCustomInteractionClass = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.GetCustomInteractionClass")); }
			ScriptFunction SetCustomInteractionObject() { return mSetCustomInteractionObject ? mSetCustomInteractionObject : (mSetCustomInteractionObject = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.SetCustomInteractionObject")); }
			ScriptFunction CreatePlayer() { return mCreatePlayer ? mCreatePlayer : (mCreatePlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.CreatePlayer")); }
			ScriptFunction AddLocalPlayer() { return mAddLocalPlayer ? mAddLocalPlayer : (mAddLocalPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.AddLocalPlayer")); }
			ScriptFunction RemoveLocalPlayer() { return mRemoveLocalPlayer ? mRemoveLocalPlayer : (mRemoveLocalPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.RemoveLocalPlayer")); }
			ScriptFunction NotifyPlayerAdded() { return mNotifyPlayerAdded ? mNotifyPlayerAdded : (mNotifyPlayerAdded = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.NotifyPlayerAdded")); }
			ScriptFunction RemovePlayer() { return mRemovePlayer ? mRemovePlayer : (mRemovePlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.RemovePlayer")); }
			ScriptFunction NotifyPlayerRemoved() { return mNotifyPlayerRemoved ? mNotifyPlayerRemoved : (mNotifyPlayerRemoved = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.NotifyPlayerRemoved")); }
			ScriptFunction FindPlayerByControllerId() { return mFindPlayerByControllerId ? mFindPlayerByControllerId : (mFindPlayerByControllerId = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.FindPlayerByControllerId")); }
			ScriptFunction CreateViewportConsole() { return mCreateViewportConsole ? mCreateViewportConsole : (mCreateViewportConsole = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.CreateViewportConsole")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.Init")); }
			ScriptFunction CreateInitialPlayer() { return mCreateInitialPlayer ? mCreateInitialPlayer : (mCreateInitialPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.CreateInitialPlayer")); }
			ScriptFunction InsertInteraction() { return mInsertInteraction ? mInsertInteraction : (mInsertInteraction = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.InsertInteraction")); }
			ScriptFunction GameSessionEnded() { return mGameSessionEnded ? mGameSessionEnded : (mGameSessionEnded = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.GameSessionEnded")); }
			ScriptFunction SetSplitscreenConfiguration() { return mSetSplitscreenConfiguration ? mSetSplitscreenConfiguration : (mSetSplitscreenConfiguration = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.SetSplitscreenConfiguration")); }
			ScriptFunction GetSplitscreenConfiguration() { return mGetSplitscreenConfiguration ? mGetSplitscreenConfiguration : (mGetSplitscreenConfiguration = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.GetSplitscreenConfiguration")); }
			ScriptFunction UpdateActiveSplitscreenType() { return mUpdateActiveSplitscreenType ? mUpdateActiveSplitscreenType : (mUpdateActiveSplitscreenType = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.UpdateActiveSplitscreenType")); }
			ScriptFunction LayoutPlayers() { return mLayoutPlayers ? mLayoutPlayers : (mLayoutPlayers = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.LayoutPlayers")); }
			ScriptFunction GetSubtitleRegion() { return mGetSubtitleRegion ? mGetSubtitleRegion : (mGetSubtitleRegion = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.GetSubtitleRegion")); }
			ScriptFunction ConvertLocalPlayerToGamePlayerIndex() { return mConvertLocalPlayerToGamePlayerIndex ? mConvertLocalPlayerToGamePlayerIndex : (mConvertLocalPlayerToGamePlayerIndex = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.ConvertLocalPlayerToGamePlayerIndex")); }
			ScriptFunction HasTopSafeZone() { return mHasTopSafeZone ? mHasTopSafeZone : (mHasTopSafeZone = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.HasTopSafeZone")); }
			ScriptFunction HasBottomSafeZone() { return mHasBottomSafeZone ? mHasBottomSafeZone : (mHasBottomSafeZone = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.HasBottomSafeZone")); }
			ScriptFunction HasLeftSafeZone() { return mHasLeftSafeZone ? mHasLeftSafeZone : (mHasLeftSafeZone = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.HasLeftSafeZone")); }
			ScriptFunction HasRightSafeZone() { return mHasRightSafeZone ? mHasRightSafeZone : (mHasRightSafeZone = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.HasRightSafeZone")); }
			ScriptFunction GetPixelSizeOfScreen() { return mGetPixelSizeOfScreen ? mGetPixelSizeOfScreen : (mGetPixelSizeOfScreen = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.GetPixelSizeOfScreen")); }
			ScriptFunction CalculateSafeZoneValues() { return mCalculateSafeZoneValues ? mCalculateSafeZoneValues : (mCalculateSafeZoneValues = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.CalculateSafeZoneValues")); }
			ScriptFunction CalculateDeadZoneForAllSides() { return mCalculateDeadZoneForAllSides ? mCalculateDeadZoneForAllSides : (mCalculateDeadZoneForAllSides = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.CalculateDeadZoneForAllSides")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.Tick")); }
			ScriptFunction DrawTitleSafeArea() { return mDrawTitleSafeArea ? mDrawTitleSafeArea : (mDrawTitleSafeArea = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.DrawTitleSafeArea")); }
			ScriptFunction PostRender() { return mPostRender ? mPostRender : (mPostRender = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.PostRender")); }
			ScriptFunction DisplayProgressMessage() { return mDisplayProgressMessage ? mDisplayProgressMessage : (mDisplayProgressMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.DisplayProgressMessage")); }
			ScriptFunction DrawTransition() { return mDrawTransition ? mDrawTransition : (mDrawTransition = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.DrawTransition")); }
			ScriptFunction DrawTransitionMessage() { return mDrawTransitionMessage ? mDrawTransitionMessage : (mDrawTransitionMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.DrawTransitionMessage")); }
			ScriptFunction SetProgressMessage() { return mSetProgressMessage ? mSetProgressMessage : (mSetProgressMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.SetProgressMessage")); }
			ScriptFunction NotifyConnectionError() { return mNotifyConnectionError ? mNotifyConnectionError : (mNotifyConnectionError = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.NotifyConnectionError")); }
			ScriptFunction SetProgressTime() { return mSetProgressTime ? mSetProgressTime : (mSetProgressTime = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.SetProgressTime")); }
			ScriptFunction ClearProgressMessages() { return mClearProgressMessages ? mClearProgressMessages : (mClearProgressMessages = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.ClearProgressMessages")); }
			ScriptFunction GetPlayerOwner() { return mGetPlayerOwner ? mGetPlayerOwner : (mGetPlayerOwner = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.GetPlayerOwner")); }
			ScriptFunction FixupOwnerReferences() { return mFixupOwnerReferences ? mFixupOwnerReferences : (mFixupOwnerReferences = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.FixupOwnerReferences")); }
			ScriptFunction OnPrimaryPlayerSwitch() { return mOnPrimaryPlayerSwitch ? mOnPrimaryPlayerSwitch : (mOnPrimaryPlayerSwitch = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.OnPrimaryPlayerSwitch")); }
			ScriptFunction BecomePrimaryPlayer() { return mBecomePrimaryPlayer ? mBecomePrimaryPlayer : (mBecomePrimaryPlayer = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.BecomePrimaryPlayer")); }
			ScriptFunction DebugSetUISystemEnabled() { return mDebugSetUISystemEnabled ? mDebugSetUISystemEnabled : (mDebugSetUISystemEnabled = ScriptObject.Find!(ScriptFunction)("Function Engine.GameViewportClient.DebugSetUISystemEnabled")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameViewportClient.TitleSafeZoneArea")); }
		@property final auto ref
		{
			float MaxPercentX() { return *cast(float*)(cast(size_t)&this + 0); }
			float RecommendedPercentX() { return *cast(float*)(cast(size_t)&this + 8); }
			float MaxPercentY() { return *cast(float*)(cast(size_t)&this + 4); }
			float RecommendedPercentY() { return *cast(float*)(cast(size_t)&this + 12); }
		}
	}
	struct PerPlayerSplitscreenData
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameViewportClient.PerPlayerSplitscreenData")); }
		@property final auto ref
		{
			float OriginY() { return *cast(float*)(cast(size_t)&this + 12); }
			float OriginX() { return *cast(float*)(cast(size_t)&this + 8); }
			float SizeY() { return *cast(float*)(cast(size_t)&this + 4); }
			float SizeX() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	struct SplitscreenData
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameViewportClient.SplitscreenData")); }
		@property final auto ref ScriptArray!(GameViewportClient.PerPlayerSplitscreenData) PlayerData() { return *cast(ScriptArray!(GameViewportClient.PerPlayerSplitscreenData)*)(cast(size_t)&this + 0); }
	}
	struct DebugDisplayProperty
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.GameViewportClient.DebugDisplayProperty")); }
		@property final
		{
			auto ref
			{
				ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
				UObject Obj() { return *cast(UObject*)(cast(size_t)&this + 0); }
			}
			bool bSpecialProperty() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bSpecialProperty(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			Console ViewportConsole() { return *cast(Console*)(cast(size_t)cast(void*)this + 96); }
			UIInteraction UIController() { return *cast(UIInteraction*)(cast(size_t)cast(void*)this + 92); }
			GameViewportClient.ESplitScreenType ActiveSplitscreenType() { return *cast(GameViewportClient.ESplitScreenType*)(cast(size_t)cast(void*)this + 201); }
			GameViewportClient.ESplitScreenType DesiredSplitscreenType() { return *cast(GameViewportClient.ESplitScreenType*)(cast(size_t)cast(void*)this + 200); }
			ScriptClass UIControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 88); }
			ScriptArray!(Interaction) GlobalInteractions() { return *cast(ScriptArray!(Interaction)*)(cast(size_t)cast(void*)this + 76); }
			GameViewportClient.ESplitScreenType Default2PSplitType() { return *cast(GameViewportClient.ESplitScreenType*)(cast(size_t)cast(void*)this + 202); }
			GameViewportClient.ESplitScreenType Default3PSplitType() { return *cast(GameViewportClient.ESplitScreenType*)(cast(size_t)cast(void*)this + 203); }
			ScriptArray!(GameViewportClient.SplitscreenData) SplitscreenInfo() { return *cast(ScriptArray!(GameViewportClient.SplitscreenData)*)(cast(size_t)cast(void*)this + 188); }
			GameViewportClient.TitleSafeZoneArea TitleSafeZone() { return *cast(GameViewportClient.TitleSafeZoneArea*)(cast(size_t)cast(void*)this + 172); }
			float ProgressTimeOut() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
			float ProgressFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
			ScriptString ProgressMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 204); }
			ScriptString LoadingMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
			ScriptString SavingMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
			ScriptString ConnectingMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
			ScriptString PrecachingMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
			ScriptString PausedMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
			UObject.Pointer VfTable_FViewportClient() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
			UObject.Pointer VfTable_FExec() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 64); }
			UObject.Pointer Viewport() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
			UObject.Pointer ViewportFrame() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 72); }
			QWord ShowFlags() { return *cast(QWord*)(cast(size_t)cast(void*)this + 100); }
			ScriptArray!(GameViewportClient.DebugDisplayProperty) DebugProperties() { return *cast(ScriptArray!(GameViewportClient.DebugDisplayProperty)*)(cast(size_t)cast(void*)this + 236); }
			UObject.Pointer ScaleformInteraction() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 248); }
		}
		bool bDebugNoGFxUI() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x80) != 0; }
		bool bDebugNoGFxUI(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x80; } return val; }
		bool bShowTitleSafeZone() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x1) != 0; }
		bool bShowTitleSafeZone(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x1; } return val; }
		bool bDisplayingUIMouseCursor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x2) != 0; }
		bool bDisplayingUIMouseCursor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x2; } return val; }
		bool bUIMouseCaptureOverride() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x4) != 0; }
		bool bUIMouseCaptureOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x4; } return val; }
		bool bOverrideDiffuseAndSpecular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x8) != 0; }
		bool bOverrideDiffuseAndSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x8; } return val; }
		bool bIsPlayInEditorViewport() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x10) != 0; }
		bool bIsPlayInEditorViewport(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x10; } return val; }
		bool bShowSystemMouseCursor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x20) != 0; }
		bool bShowSystemMouseCursor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x20; } return val; }
		bool bDisableWorldRendering() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x40) != 0; }
		bool bDisableWorldRendering(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x40; } return val; }
		bool bUseHardwareCursorWhenWindowed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x100) != 0; }
		bool bUseHardwareCursorWhenWindowed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x100; } return val; }
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
	bool HandleInputKey(int ControllerId, ScriptName Key, UObject.EInputEvent EventType, float AmountDepressed, bool bGamepad)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(UObject.EInputEvent*)&params[12] = EventType;
		*cast(float*)&params[16] = AmountDepressed;
		*cast(bool*)&params[20] = bGamepad;
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
	void GetViewportSize(UObject.Vector2D* out_ViewportSize)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = *out_ViewportSize;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetViewportSize, params.ptr, cast(void*)0);
		*out_ViewportSize = *cast(UObject.Vector2D*)params.ptr;
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
	LocalPlayer CreatePlayer(int ControllerId, ScriptString* OutError, bool bSpawnActor)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptString*)&params[4] = *OutError;
		*cast(bool*)&params[16] = bSpawnActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreatePlayer, params.ptr, cast(void*)0);
		*OutError = *cast(ScriptString*)&params[4];
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
	bool CreateViewportConsole(ScriptClass vpcClass, ScriptString* OutError)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = vpcClass;
		*cast(ScriptString*)&params[4] = *OutError;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateViewportConsole, params.ptr, cast(void*)0);
		*OutError = *cast(ScriptString*)&params[4];
		return *cast(bool*)&params[16];
	}
	bool Init(ScriptString* OutError)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *OutError;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
		*OutError = *cast(ScriptString*)params.ptr;
		return *cast(bool*)&params[12];
	}
	bool CreateInitialPlayer(ScriptString* OutError)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *OutError;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateInitialPlayer, params.ptr, cast(void*)0);
		*OutError = *cast(ScriptString*)params.ptr;
		return *cast(bool*)&params[12];
	}
	int InsertInteraction(Interaction NewInteraction, int InIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Interaction*)params.ptr = NewInteraction;
		*cast(int*)&params[4] = InIndex;
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
	void GetSubtitleRegion(UObject.Vector2D* MinPos, UObject.Vector2D* MaxPos)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = *MinPos;
		*cast(UObject.Vector2D*)&params[8] = *MaxPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSubtitleRegion, params.ptr, cast(void*)0);
		*MinPos = *cast(UObject.Vector2D*)params.ptr;
		*MaxPos = *cast(UObject.Vector2D*)&params[8];
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
	void GetPixelSizeOfScreen(float* out_Width, float* out_Height, Canvas pCanvas, int LocalPlayerIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = *out_Width;
		*cast(float*)&params[4] = *out_Height;
		*cast(Canvas*)&params[8] = pCanvas;
		*cast(int*)&params[12] = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPixelSizeOfScreen, params.ptr, cast(void*)0);
		*out_Width = *cast(float*)params.ptr;
		*out_Height = *cast(float*)&params[4];
	}
	void CalculateSafeZoneValues(float* out_Horizontal, float* out_Vertical, Canvas pCanvas, int LocalPlayerIndex, bool bUseMaxPercent)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = *out_Horizontal;
		*cast(float*)&params[4] = *out_Vertical;
		*cast(Canvas*)&params[8] = pCanvas;
		*cast(int*)&params[12] = LocalPlayerIndex;
		*cast(bool*)&params[16] = bUseMaxPercent;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculateSafeZoneValues, params.ptr, cast(void*)0);
		*out_Horizontal = *cast(float*)params.ptr;
		*out_Vertical = *cast(float*)&params[4];
	}
	bool CalculateDeadZoneForAllSides(LocalPlayer LPlayer, Canvas pCanvas, float* fTopSafeZone, float* fBottomSafeZone, float* fLeftSafeZone, float* fRightSafeZone, bool bUseMaxPercent)
	{
		ubyte params[32];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = LPlayer;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(float*)&params[8] = *fTopSafeZone;
		*cast(float*)&params[12] = *fBottomSafeZone;
		*cast(float*)&params[16] = *fLeftSafeZone;
		*cast(float*)&params[20] = *fRightSafeZone;
		*cast(bool*)&params[24] = bUseMaxPercent;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculateDeadZoneForAllSides, params.ptr, cast(void*)0);
		*fTopSafeZone = *cast(float*)&params[8];
		*fBottomSafeZone = *cast(float*)&params[12];
		*fLeftSafeZone = *cast(float*)&params[16];
		*fRightSafeZone = *cast(float*)&params[20];
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
	void SetProgressMessage(PlayerController.EProgressMessageType MessageType, ScriptString Message, ScriptString Title, bool bIgnoreFutureNetworkMessages)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController.EProgressMessageType*)params.ptr = MessageType;
		*cast(ScriptString*)&params[4] = Message;
		*cast(ScriptString*)&params[16] = Title;
		*cast(bool*)&params[28] = bIgnoreFutureNetworkMessages;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetProgressMessage, params.ptr, cast(void*)0);
	}
	void NotifyConnectionError(ScriptString Message, ScriptString Title)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(ScriptString*)&params[12] = Title;
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
