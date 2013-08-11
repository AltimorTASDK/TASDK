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
		public @property final auto ref float MaxPercentX() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __MaxPercentX[4];
		public @property final auto ref float RecommendedPercentX() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __RecommendedPercentX[4];
		public @property final auto ref float MaxPercentY() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __MaxPercentY[4];
		public @property final auto ref float RecommendedPercentY() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __RecommendedPercentY[4];
	}
	struct PerPlayerSplitscreenData
	{
		public @property final auto ref float OriginY() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __OriginY[4];
		public @property final auto ref float OriginX() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __OriginX[4];
		public @property final auto ref float SizeY() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __SizeY[4];
		public @property final auto ref float SizeX() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __SizeX[4];
	}
	struct SplitscreenData
	{
		public @property final auto ref ScriptArray!(GameViewportClient.PerPlayerSplitscreenData) PlayerData() { return *cast(ScriptArray!(GameViewportClient.PerPlayerSplitscreenData)*)(cast(size_t)&this + 0); }
		private ubyte __PlayerData[12];
	}
	struct DebugDisplayProperty
	{
		public @property final bool bSpecialProperty() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bSpecialProperty(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bSpecialProperty[4];
		public @property final auto ref ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __PropertyName[8];
		public @property final auto ref UObject Obj() { return *cast(UObject*)(cast(size_t)&this + 0); }
		private ubyte __Obj[4];
	}
	public @property final auto ref Console ViewportConsole() { return *cast(Console*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref UIInteraction UIController() { return *cast(UIInteraction*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref GameViewportClient.ESplitScreenType ActiveSplitscreenType() { return *cast(GameViewportClient.ESplitScreenType*)(cast(size_t)cast(void*)this + 201); }
	public @property final auto ref GameViewportClient.ESplitScreenType DesiredSplitscreenType() { return *cast(GameViewportClient.ESplitScreenType*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref ScriptClass UIControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 88); }
	public @property final bool bDebugNoGFxUI() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x80) != 0; }
	public @property final bool bDebugNoGFxUI(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x80; } return val; }
	public @property final auto ref ScriptArray!(Interaction) GlobalInteractions() { return *cast(ScriptArray!(Interaction)*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref GameViewportClient.ESplitScreenType Default2PSplitType() { return *cast(GameViewportClient.ESplitScreenType*)(cast(size_t)cast(void*)this + 202); }
	public @property final auto ref GameViewportClient.ESplitScreenType Default3PSplitType() { return *cast(GameViewportClient.ESplitScreenType*)(cast(size_t)cast(void*)this + 203); }
	public @property final auto ref ScriptArray!(GameViewportClient.SplitscreenData) SplitscreenInfo() { return *cast(ScriptArray!(GameViewportClient.SplitscreenData)*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref GameViewportClient.TitleSafeZoneArea TitleSafeZone() { return *cast(GameViewportClient.TitleSafeZoneArea*)(cast(size_t)cast(void*)this + 172); }
	public @property final bool bShowTitleSafeZone() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x1) != 0; }
	public @property final bool bShowTitleSafeZone(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x1; } return val; }
	public @property final auto ref float ProgressTimeOut() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref float ProgressFadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref ScriptString ProgressMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref ScriptString LoadingMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptString SavingMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptString ConnectingMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptString PrecachingMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptString PausedMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref UObject.Pointer VfTable_FViewportClient() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref UObject.Pointer VfTable_FExec() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref UObject.Pointer Viewport() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref UObject.Pointer ViewportFrame() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref QWord ShowFlags() { return *cast(QWord*)(cast(size_t)cast(void*)this + 100); }
	public @property final bool bDisplayingUIMouseCursor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x2) != 0; }
	public @property final bool bDisplayingUIMouseCursor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x2; } return val; }
	public @property final bool bUIMouseCaptureOverride() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x4) != 0; }
	public @property final bool bUIMouseCaptureOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x4; } return val; }
	public @property final bool bOverrideDiffuseAndSpecular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x8) != 0; }
	public @property final bool bOverrideDiffuseAndSpecular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x8; } return val; }
	public @property final bool bIsPlayInEditorViewport() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x10) != 0; }
	public @property final bool bIsPlayInEditorViewport(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x10; } return val; }
	public @property final bool bShowSystemMouseCursor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x20) != 0; }
	public @property final bool bShowSystemMouseCursor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x20; } return val; }
	public @property final bool bDisableWorldRendering() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x40) != 0; }
	public @property final bool bDisableWorldRendering(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x40; } return val; }
	public @property final bool bUseHardwareCursorWhenWindowed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x100) != 0; }
	public @property final bool bUseHardwareCursorWhenWindowed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x100; } return val; }
	public @property final auto ref ScriptArray!(GameViewportClient.DebugDisplayProperty) DebugProperties() { return *cast(ScriptArray!(GameViewportClient.DebugDisplayProperty)*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref UObject.Pointer ScaleformInteraction() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 248); }
	final ScriptString ConsoleCommand(ScriptString Command)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12994], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final bool HandleInputKey(int ControllerId, ScriptName Key, UObject.EInputEvent EventType, float AmountDepressed, bool bGamepad)
	{
		ubyte params[25];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(UObject.EInputEvent*)&params[12] = EventType;
		*cast(float*)&params[16] = AmountDepressed;
		*cast(bool*)&params[20] = bGamepad;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17875], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool HandleInputAxis(int ControllerId, ScriptName Key, float Delta, float DeltaTime, bool bGamepad)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(float*)&params[12] = Delta;
		*cast(float*)&params[16] = DeltaTime;
		*cast(bool*)&params[20] = bGamepad;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17882], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	final bool HandleInputChar(int ControllerId, ScriptString Unicode)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptString*)&params[4] = Unicode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17889], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void GetViewportSize(UObject.Vector2D* out_ViewportSize)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = *out_ViewportSize;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17894], params.ptr, cast(void*)0);
		*out_ViewportSize = *cast(UObject.Vector2D*)params.ptr;
	}
	final bool IsFullScreenViewport()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17896], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool ShouldForceFullscreenViewport()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17898], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final int GetNumCustomInteractions()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17900], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final ScriptClass GetCustomInteractionClass(int InIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17902], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[4];
	}
	final void SetCustomInteractionObject(Interaction InInteraction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Interaction*)params.ptr = InInteraction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17905], params.ptr, cast(void*)0);
	}
	final LocalPlayer CreatePlayer(int ControllerId, ScriptString* OutError, bool bSpawnActor)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptString*)&params[4] = *OutError;
		*cast(bool*)&params[16] = bSpawnActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17907], params.ptr, cast(void*)0);
		*OutError = *cast(ScriptString*)&params[4];
		return *cast(LocalPlayer*)&params[20];
	}
	final int AddLocalPlayer(LocalPlayer NewPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17914], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final int RemoveLocalPlayer(LocalPlayer ExistingPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = ExistingPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17917], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void NotifyPlayerAdded(int PlayerIndex, LocalPlayer AddedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = AddedPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17919], params.ptr, cast(void*)0);
	}
	final bool RemovePlayer(LocalPlayer ExPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = ExPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17920], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void NotifyPlayerRemoved(int PlayerIndex, LocalPlayer RemovedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = RemovedPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17924], params.ptr, cast(void*)0);
	}
	final LocalPlayer FindPlayerByControllerId(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17925], params.ptr, cast(void*)0);
		return *cast(LocalPlayer*)&params[4];
	}
	final bool CreateViewportConsole(ScriptClass vpcClass, ScriptString* OutError)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = vpcClass;
		*cast(ScriptString*)&params[4] = *OutError;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17929], params.ptr, cast(void*)0);
		*OutError = *cast(ScriptString*)&params[4];
		return *cast(bool*)&params[16];
	}
	final bool Init(ScriptString* OutError)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *OutError;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17933], params.ptr, cast(void*)0);
		*OutError = *cast(ScriptString*)params.ptr;
		return *cast(bool*)&params[12];
	}
	final bool CreateInitialPlayer(ScriptString* OutError)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *OutError;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17945], params.ptr, cast(void*)0);
		*OutError = *cast(ScriptString*)params.ptr;
		return *cast(bool*)&params[12];
	}
	final int InsertInteraction(Interaction NewInteraction, int InIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Interaction*)params.ptr = NewInteraction;
		*cast(int*)&params[4] = InIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17955], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void GameSessionEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17961], cast(void*)0, cast(void*)0);
	}
	final void SetSplitscreenConfiguration(GameViewportClient.ESplitScreenType SplitType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(GameViewportClient.ESplitScreenType*)params.ptr = SplitType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17963], params.ptr, cast(void*)0);
	}
	final GameViewportClient.ESplitScreenType GetSplitscreenConfiguration()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17965], params.ptr, cast(void*)0);
		return *cast(GameViewportClient.ESplitScreenType*)params.ptr;
	}
	final void UpdateActiveSplitscreenType()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17967], cast(void*)0, cast(void*)0);
	}
	final void LayoutPlayers()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17971], cast(void*)0, cast(void*)0);
	}
	final void GetSubtitleRegion(UObject.Vector2D* MinPos, UObject.Vector2D* MaxPos)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = *MinPos;
		*cast(UObject.Vector2D*)&params[8] = *MaxPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17977], params.ptr, cast(void*)0);
		*MinPos = *cast(UObject.Vector2D*)params.ptr;
		*MaxPos = *cast(UObject.Vector2D*)&params[8];
	}
	final int ConvertLocalPlayerToGamePlayerIndex(LocalPlayer LPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = LPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17980], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final bool HasTopSafeZone(int LocalPlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17983], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool HasBottomSafeZone(int LocalPlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17986], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool HasLeftSafeZone(int LocalPlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17989], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool HasRightSafeZone(int LocalPlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17992], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void GetPixelSizeOfScreen(float* out_Width, float* out_Height, Canvas pCanvas, int LocalPlayerIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = *out_Width;
		*cast(float*)&params[4] = *out_Height;
		*cast(Canvas*)&params[8] = pCanvas;
		*cast(int*)&params[12] = LocalPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17995], params.ptr, cast(void*)0);
		*out_Width = *cast(float*)params.ptr;
		*out_Height = *cast(float*)&params[4];
	}
	final void CalculateSafeZoneValues(float* out_Horizontal, float* out_Vertical, Canvas pCanvas, int LocalPlayerIndex, bool bUseMaxPercent)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = *out_Horizontal;
		*cast(float*)&params[4] = *out_Vertical;
		*cast(Canvas*)&params[8] = pCanvas;
		*cast(int*)&params[12] = LocalPlayerIndex;
		*cast(bool*)&params[16] = bUseMaxPercent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18000], params.ptr, cast(void*)0);
		*out_Horizontal = *cast(float*)params.ptr;
		*out_Vertical = *cast(float*)&params[4];
	}
	final bool CalculateDeadZoneForAllSides(LocalPlayer LPlayer, Canvas pCanvas, float* fTopSafeZone, float* fBottomSafeZone, float* fLeftSafeZone, float* fRightSafeZone, bool bUseMaxPercent)
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18015], params.ptr, cast(void*)0);
		*fTopSafeZone = *cast(float*)&params[8];
		*fBottomSafeZone = *cast(float*)&params[12];
		*fLeftSafeZone = *cast(float*)&params[16];
		*fRightSafeZone = *cast(float*)&params[20];
		return *cast(bool*)&params[28];
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18031], params.ptr, cast(void*)0);
	}
	final void DrawTitleSafeArea(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18033], params.ptr, cast(void*)0);
	}
	final void PostRender(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18035], params.ptr, cast(void*)0);
	}
	final void DisplayProgressMessage(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18038], params.ptr, cast(void*)0);
	}
	final void DrawTransition(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18051], params.ptr, cast(void*)0);
	}
	final void DrawTransitionMessage(Canvas pCanvas, ScriptString Message)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(ScriptString*)&params[4] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18058], params.ptr, cast(void*)0);
	}
	final void SetProgressMessage(PlayerController.EProgressMessageType MessageType, ScriptString Message, ScriptString Title, bool bIgnoreFutureNetworkMessages)
	{
		ubyte params[29];
		params[] = 0;
		*cast(PlayerController.EProgressMessageType*)params.ptr = MessageType;
		*cast(ScriptString*)&params[4] = Message;
		*cast(ScriptString*)&params[16] = Title;
		*cast(bool*)&params[28] = bIgnoreFutureNetworkMessages;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18075], params.ptr, cast(void*)0);
	}
	final void NotifyConnectionError(ScriptString Message, ScriptString Title)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(ScriptString*)&params[12] = Title;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18081], params.ptr, cast(void*)0);
	}
	final void SetProgressTime(float T)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18085], params.ptr, cast(void*)0);
	}
	final void ClearProgressMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18087], cast(void*)0, cast(void*)0);
	}
	final LocalPlayer GetPlayerOwner(int PlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18089], params.ptr, cast(void*)0);
		return *cast(LocalPlayer*)&params[4];
	}
	final void FixupOwnerReferences()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18092], cast(void*)0, cast(void*)0);
	}
	final void OnPrimaryPlayerSwitch(LocalPlayer OldPrimaryPlayer, LocalPlayer NewPrimaryPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = OldPrimaryPlayer;
		*cast(LocalPlayer*)&params[4] = NewPrimaryPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18093], params.ptr, cast(void*)0);
	}
	final void BecomePrimaryPlayer(int PlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18096], params.ptr, cast(void*)0);
	}
	final void DebugSetUISystemEnabled(bool bOldUISystemActive, bool bGFxUISystemActive)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bOldUISystemActive;
		*cast(bool*)&params[4] = bGFxUISystemActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18105], params.ptr, cast(void*)0);
	}
}
