module UnrealScript.TribesGame.TrEntryPlayerController;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.Engine.PostProcessChain;
import UnrealScript.TribesGame.TrPaperDollMainMenu;
import UnrealScript.TribesGame.TrMainMenuContentData;

extern(C++) interface TrEntryPlayerController : TrPlayerController
{
	public @property final bool bMenuNotified() { return (*cast(uint*)(cast(size_t)cast(void*)this + 3444) & 0x1) != 0; }
	public @property final bool bMenuNotified(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 3444) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 3444) &= ~0x1; } return val; }
	public @property final auto ref ScriptArray!(PostProcessChain) OldPostProcessChain() { return *cast(ScriptArray!(PostProcessChain)*)(cast(size_t)cast(void*)this + 3452); }
	public @property final auto ref float m_fCameraRotationInterpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3560); }
	public @property final auto ref float m_fCameraRotationCurrTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3556); }
	public @property final auto ref Rotator m_rTargetCameraRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3544); }
	public @property final auto ref Rotator m_rInitialCameraRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3532); }
	public @property final auto ref Vector m_CameraLocation4x3() { return *cast(Vector*)(cast(size_t)cast(void*)this + 3520); }
	public @property final auto ref Vector m_CameraLocation16x10() { return *cast(Vector*)(cast(size_t)cast(void*)this + 3508); }
	public @property final auto ref Vector m_CameraLocation16x9() { return *cast(Vector*)(cast(size_t)cast(void*)this + 3496); }
	public @property final auto ref float m_PreloadTextureTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3492); }
	public @property final auto ref TrObject.EContentDataType m_ContentDataType() { return *cast(TrObject.EContentDataType*)(cast(size_t)cast(void*)this + 3488); }
	public @property final auto ref TrPaperDollMainMenu m_MainMenuPaperDoll() { return *cast(TrPaperDollMainMenu*)(cast(size_t)cast(void*)this + 3484); }
	public @property final auto ref ScriptString MainMenuContentClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3472); }
	public @property final auto ref TrMainMenuContentData m_MainMenuContentData() { return *cast(TrMainMenuContentData*)(cast(size_t)cast(void*)this + 3468); }
	public @property final auto ref LocalPlayer OldPlayer() { return *cast(LocalPlayer*)(cast(size_t)cast(void*)this + 3464); }
	public @property final auto ref PostProcessChain EntryPostProcessChain() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 3448); }
	public @property final auto ref int MAX_RESEND_WAIT_TIME() { return *cast(int*)(cast(size_t)cast(void*)this + 3440); }
	public @property final auto ref int MIN_RESEND_WAIT_TIME() { return *cast(int*)(cast(size_t)cast(void*)this + 3436); }
	public @property final auto ref int m_CountdownTime() { return *cast(int*)(cast(size_t)cast(void*)this + 3432); }
	final bool RequestPaperDoll()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87308], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SendMenuToLobby()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87310], cast(void*)0, cast(void*)0);
	}
	final void ResendReadyCheck()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87311], cast(void*)0, cast(void*)0);
	}
	final void UpdateMenuTimer(int Seconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87312], params.ptr, cast(void*)0);
	}
	final int GetWaitRemaining()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87314], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final void NotifyMenuReady()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87316], cast(void*)0, cast(void*)0);
	}
	final void RefreshFriends()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87317], cast(void*)0, cast(void*)0);
	}
	final void SwapModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87318], cast(void*)0, cast(void*)0);
	}
	final void ShowPeach()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87319], cast(void*)0, cast(void*)0);
	}
	final void ToggleMenuVisible()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87320], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87321], cast(void*)0, cast(void*)0);
	}
	final void GetPlayerViewPoint(Vector* POVLocation, Rotator* POVRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *POVLocation;
		*cast(Rotator*)&params[12] = *POVRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87325], params.ptr, cast(void*)0);
		*POVLocation = *cast(Vector*)params.ptr;
		*POVRotation = *cast(Rotator*)&params[12];
	}
	final void SwingCamera(float TargetPitch, float TargetYaw, float TargetRoll)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = TargetPitch;
		*cast(float*)&params[4] = TargetYaw;
		*cast(float*)&params[8] = TargetRoll;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87332], params.ptr, cast(void*)0);
	}
	final void SwingCameraBack()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87337], cast(void*)0, cast(void*)0);
	}
	final void PreloadTexturesTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87339], cast(void*)0, cast(void*)0);
	}
	final void NotifyMenuReadyTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87340], cast(void*)0, cast(void*)0);
	}
	final void RequestPaperDollTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87341], cast(void*)0, cast(void*)0);
	}
	final void BeginQueueResendTimer(int SecondsLeft)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SecondsLeft;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87342], params.ptr, cast(void*)0);
	}
	final void ClearQueueResendTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87344], cast(void*)0, cast(void*)0);
	}
	final void LoadingTimer(bool bStart)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bStart;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87345], params.ptr, cast(void*)0);
	}
	final void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87347], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87348], cast(void*)0, cast(void*)0);
	}
	final void OnControllerChanged(int ControllerId, bool bIsConnected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(bool*)&params[4] = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87349], params.ptr, cast(void*)0);
	}
	final void OnGameInviteReceived(ubyte LocalUserNum, ScriptString RequestingNick)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = RequestingNick;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87353], params.ptr, cast(void*)0);
	}
	final void OnFriendInviteReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId RequestingPlayer, ScriptString RequestingNick, ScriptString Message)
	{
		ubyte params[33];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = RequestingPlayer;
		*cast(ScriptString*)&params[12] = RequestingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87356], params.ptr, cast(void*)0);
	}
	final void OnFriendMessageReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId SendingPlayer, ScriptString SendingNick, ScriptString Message)
	{
		ubyte params[33];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = SendingPlayer;
		*cast(ScriptString*)&params[12] = SendingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87361], params.ptr, cast(void*)0);
	}
	final void OnConnectionStatusChange(OnlineSubsystem.EOnlineServerConnectionStatus ConnectionStatus)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)params.ptr = ConnectionStatus;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87366], params.ptr, cast(void*)0);
	}
	final void OnLinkStatusChanged(bool bConnected)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bConnected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87369], params.ptr, cast(void*)0);
	}
	final void QuitToMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87372], cast(void*)0, cast(void*)0);
	}
	final void SetPawnConstructionScene(bool bShow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87373], params.ptr, cast(void*)0);
	}
	final void ShowMidGameMenu(ScriptName TabTag, bool bEnableInput)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TabTag;
		*cast(bool*)&params[8] = bEnableInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87375], params.ptr, cast(void*)0);
	}
	final void ShowScoreboard()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87378], cast(void*)0, cast(void*)0);
	}
	final void Pose(int PoseId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PoseId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87379], params.ptr, cast(void*)0);
	}
	final void Weap(int WeapId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = WeapId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87381], params.ptr, cast(void*)0);
	}
	final void Char(int CharID)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = CharID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87383], params.ptr, cast(void*)0);
	}
	final void UpdatePaperDoll_Device(ScriptClass DeviceClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeviceClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87392], params.ptr, cast(void*)0);
	}
	final void ClearMainMenuPaperDoll()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87394], cast(void*)0, cast(void*)0);
	}
	final void UpdateMainMenuPaperDoll_Mesh(TrObject.EContentDataType Type)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.EContentDataType*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87395], params.ptr, cast(void*)0);
	}
	final void UpdatePaperDoll(ScriptClass FamilyInfoClass, ScriptClass DeviceClass, ScriptClass skinClass, int TeamNum)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfoClass;
		*cast(ScriptClass*)&params[4] = DeviceClass;
		*cast(ScriptClass*)&params[8] = skinClass;
		*cast(int*)&params[12] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87398], params.ptr, cast(void*)0);
	}
	final void OnDeviceContentDataClassLoaded(ScriptClass DeviceContentDataClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeviceContentDataClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87403], params.ptr, cast(void*)0);
	}
	final void OnClassSelectedMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87405], cast(void*)0, cast(void*)0);
	}
	final void On3PSkinContentLoaded(ScriptClass Skin3PDataClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Skin3PDataClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87406], params.ptr, cast(void*)0);
	}
	final void RefreshFriendsTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87408], cast(void*)0, cast(void*)0);
	}
	final void SwapModelTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87409], cast(void*)0, cast(void*)0);
	}
	final void ShowPeachTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87410], cast(void*)0, cast(void*)0);
	}
}
