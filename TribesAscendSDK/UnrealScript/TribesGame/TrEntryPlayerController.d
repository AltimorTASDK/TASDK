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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEntryPlayerController")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRequestPaperDoll;
			ScriptFunction mSendMenuToLobby;
			ScriptFunction mResendReadyCheck;
			ScriptFunction mUpdateMenuTimer;
			ScriptFunction mGetWaitRemaining;
			ScriptFunction mNotifyMenuReady;
			ScriptFunction mRefreshFriends;
			ScriptFunction mSwapModel;
			ScriptFunction mShowPeach;
			ScriptFunction mToggleMenuVisible;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mGetPlayerViewPoint;
			ScriptFunction mSwingCamera;
			ScriptFunction mSwingCameraBack;
			ScriptFunction mPreloadTexturesTimer;
			ScriptFunction mNotifyMenuReadyTimer;
			ScriptFunction mRequestPaperDollTimer;
			ScriptFunction mBeginQueueResendTimer;
			ScriptFunction mClearQueueResendTimer;
			ScriptFunction mLoadingTimer;
			ScriptFunction mInitInputSystem;
			ScriptFunction mDestroyed;
			ScriptFunction mOnControllerChanged;
			ScriptFunction mOnGameInviteReceived;
			ScriptFunction mOnFriendInviteReceived;
			ScriptFunction mOnFriendMessageReceived;
			ScriptFunction mOnConnectionStatusChange;
			ScriptFunction mOnLinkStatusChanged;
			ScriptFunction mQuitToMainMenu;
			ScriptFunction mSetPawnConstructionScene;
			ScriptFunction mShowMidGameMenu;
			ScriptFunction mShowScoreboard;
			ScriptFunction mPose;
			ScriptFunction mWeap;
			ScriptFunction mChar;
			ScriptFunction mUpdatePaperDoll_Device;
			ScriptFunction mClearMainMenuPaperDoll;
			ScriptFunction mUpdateMainMenuPaperDoll_Mesh;
			ScriptFunction mUpdatePaperDoll;
			ScriptFunction mOnDeviceContentDataClassLoaded;
			ScriptFunction mOnClassSelectedMainMenu;
			ScriptFunction mOn3PSkinContentLoaded;
			ScriptFunction mRefreshFriendsTimer;
			ScriptFunction mSwapModelTimer;
			ScriptFunction mShowPeachTimer;
		}
		public @property static final
		{
			ScriptFunction RequestPaperDoll() { return mRequestPaperDoll ? mRequestPaperDoll : (mRequestPaperDoll = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.RequestPaperDoll")); }
			ScriptFunction SendMenuToLobby() { return mSendMenuToLobby ? mSendMenuToLobby : (mSendMenuToLobby = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.SendMenuToLobby")); }
			ScriptFunction ResendReadyCheck() { return mResendReadyCheck ? mResendReadyCheck : (mResendReadyCheck = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.ResendReadyCheck")); }
			ScriptFunction UpdateMenuTimer() { return mUpdateMenuTimer ? mUpdateMenuTimer : (mUpdateMenuTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.UpdateMenuTimer")); }
			ScriptFunction GetWaitRemaining() { return mGetWaitRemaining ? mGetWaitRemaining : (mGetWaitRemaining = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.GetWaitRemaining")); }
			ScriptFunction NotifyMenuReady() { return mNotifyMenuReady ? mNotifyMenuReady : (mNotifyMenuReady = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.NotifyMenuReady")); }
			ScriptFunction RefreshFriends() { return mRefreshFriends ? mRefreshFriends : (mRefreshFriends = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.RefreshFriends")); }
			ScriptFunction SwapModel() { return mSwapModel ? mSwapModel : (mSwapModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.SwapModel")); }
			ScriptFunction ShowPeach() { return mShowPeach ? mShowPeach : (mShowPeach = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.ShowPeach")); }
			ScriptFunction ToggleMenuVisible() { return mToggleMenuVisible ? mToggleMenuVisible : (mToggleMenuVisible = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.ToggleMenuVisible")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.PostBeginPlay")); }
			ScriptFunction GetPlayerViewPoint() { return mGetPlayerViewPoint ? mGetPlayerViewPoint : (mGetPlayerViewPoint = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.GetPlayerViewPoint")); }
			ScriptFunction SwingCamera() { return mSwingCamera ? mSwingCamera : (mSwingCamera = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.SwingCamera")); }
			ScriptFunction SwingCameraBack() { return mSwingCameraBack ? mSwingCameraBack : (mSwingCameraBack = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.SwingCameraBack")); }
			ScriptFunction PreloadTexturesTimer() { return mPreloadTexturesTimer ? mPreloadTexturesTimer : (mPreloadTexturesTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.PreloadTexturesTimer")); }
			ScriptFunction NotifyMenuReadyTimer() { return mNotifyMenuReadyTimer ? mNotifyMenuReadyTimer : (mNotifyMenuReadyTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.NotifyMenuReadyTimer")); }
			ScriptFunction RequestPaperDollTimer() { return mRequestPaperDollTimer ? mRequestPaperDollTimer : (mRequestPaperDollTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.RequestPaperDollTimer")); }
			ScriptFunction BeginQueueResendTimer() { return mBeginQueueResendTimer ? mBeginQueueResendTimer : (mBeginQueueResendTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.BeginQueueResendTimer")); }
			ScriptFunction ClearQueueResendTimer() { return mClearQueueResendTimer ? mClearQueueResendTimer : (mClearQueueResendTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.ClearQueueResendTimer")); }
			ScriptFunction LoadingTimer() { return mLoadingTimer ? mLoadingTimer : (mLoadingTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.LoadingTimer")); }
			ScriptFunction InitInputSystem() { return mInitInputSystem ? mInitInputSystem : (mInitInputSystem = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.InitInputSystem")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.Destroyed")); }
			ScriptFunction OnControllerChanged() { return mOnControllerChanged ? mOnControllerChanged : (mOnControllerChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.OnControllerChanged")); }
			ScriptFunction OnGameInviteReceived() { return mOnGameInviteReceived ? mOnGameInviteReceived : (mOnGameInviteReceived = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.OnGameInviteReceived")); }
			ScriptFunction OnFriendInviteReceived() { return mOnFriendInviteReceived ? mOnFriendInviteReceived : (mOnFriendInviteReceived = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.OnFriendInviteReceived")); }
			ScriptFunction OnFriendMessageReceived() { return mOnFriendMessageReceived ? mOnFriendMessageReceived : (mOnFriendMessageReceived = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.OnFriendMessageReceived")); }
			ScriptFunction OnConnectionStatusChange() { return mOnConnectionStatusChange ? mOnConnectionStatusChange : (mOnConnectionStatusChange = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.OnConnectionStatusChange")); }
			ScriptFunction OnLinkStatusChanged() { return mOnLinkStatusChanged ? mOnLinkStatusChanged : (mOnLinkStatusChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.OnLinkStatusChanged")); }
			ScriptFunction QuitToMainMenu() { return mQuitToMainMenu ? mQuitToMainMenu : (mQuitToMainMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.QuitToMainMenu")); }
			ScriptFunction SetPawnConstructionScene() { return mSetPawnConstructionScene ? mSetPawnConstructionScene : (mSetPawnConstructionScene = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.SetPawnConstructionScene")); }
			ScriptFunction ShowMidGameMenu() { return mShowMidGameMenu ? mShowMidGameMenu : (mShowMidGameMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.ShowMidGameMenu")); }
			ScriptFunction ShowScoreboard() { return mShowScoreboard ? mShowScoreboard : (mShowScoreboard = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.ShowScoreboard")); }
			ScriptFunction Pose() { return mPose ? mPose : (mPose = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.Pose")); }
			ScriptFunction Weap() { return mWeap ? mWeap : (mWeap = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.Weap")); }
			ScriptFunction Char() { return mChar ? mChar : (mChar = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.Char")); }
			ScriptFunction UpdatePaperDoll_Device() { return mUpdatePaperDoll_Device ? mUpdatePaperDoll_Device : (mUpdatePaperDoll_Device = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.UpdatePaperDoll_Device")); }
			ScriptFunction ClearMainMenuPaperDoll() { return mClearMainMenuPaperDoll ? mClearMainMenuPaperDoll : (mClearMainMenuPaperDoll = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.ClearMainMenuPaperDoll")); }
			ScriptFunction UpdateMainMenuPaperDoll_Mesh() { return mUpdateMainMenuPaperDoll_Mesh ? mUpdateMainMenuPaperDoll_Mesh : (mUpdateMainMenuPaperDoll_Mesh = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.UpdateMainMenuPaperDoll_Mesh")); }
			ScriptFunction UpdatePaperDoll() { return mUpdatePaperDoll ? mUpdatePaperDoll : (mUpdatePaperDoll = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.UpdatePaperDoll")); }
			ScriptFunction OnDeviceContentDataClassLoaded() { return mOnDeviceContentDataClassLoaded ? mOnDeviceContentDataClassLoaded : (mOnDeviceContentDataClassLoaded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.OnDeviceContentDataClassLoaded")); }
			ScriptFunction OnClassSelectedMainMenu() { return mOnClassSelectedMainMenu ? mOnClassSelectedMainMenu : (mOnClassSelectedMainMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.OnClassSelectedMainMenu")); }
			ScriptFunction On3PSkinContentLoaded() { return mOn3PSkinContentLoaded ? mOn3PSkinContentLoaded : (mOn3PSkinContentLoaded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.On3PSkinContentLoaded")); }
			ScriptFunction RefreshFriendsTimer() { return mRefreshFriendsTimer ? mRefreshFriendsTimer : (mRefreshFriendsTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.RefreshFriendsTimer")); }
			ScriptFunction SwapModelTimer() { return mSwapModelTimer ? mSwapModelTimer : (mSwapModelTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.SwapModelTimer")); }
			ScriptFunction ShowPeachTimer() { return mShowPeachTimer ? mShowPeachTimer : (mShowPeachTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryPlayerController.ShowPeachTimer")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(PostProcessChain) OldPostProcessChain() { return *cast(ScriptArray!(PostProcessChain)*)(cast(size_t)cast(void*)this + 3452); }
			float m_fCameraRotationInterpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3560); }
			float m_fCameraRotationCurrTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3556); }
			Rotator m_rTargetCameraRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3544); }
			Rotator m_rInitialCameraRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 3532); }
			Vector m_CameraLocation4x3() { return *cast(Vector*)(cast(size_t)cast(void*)this + 3520); }
			Vector m_CameraLocation16x10() { return *cast(Vector*)(cast(size_t)cast(void*)this + 3508); }
			Vector m_CameraLocation16x9() { return *cast(Vector*)(cast(size_t)cast(void*)this + 3496); }
			float m_PreloadTextureTime() { return *cast(float*)(cast(size_t)cast(void*)this + 3492); }
			TrObject.EContentDataType m_ContentDataType() { return *cast(TrObject.EContentDataType*)(cast(size_t)cast(void*)this + 3488); }
			TrPaperDollMainMenu m_MainMenuPaperDoll() { return *cast(TrPaperDollMainMenu*)(cast(size_t)cast(void*)this + 3484); }
			ScriptString MainMenuContentClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3472); }
			TrMainMenuContentData m_MainMenuContentData() { return *cast(TrMainMenuContentData*)(cast(size_t)cast(void*)this + 3468); }
			LocalPlayer OldPlayer() { return *cast(LocalPlayer*)(cast(size_t)cast(void*)this + 3464); }
			PostProcessChain EntryPostProcessChain() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 3448); }
			int MAX_RESEND_WAIT_TIME() { return *cast(int*)(cast(size_t)cast(void*)this + 3440); }
			int MIN_RESEND_WAIT_TIME() { return *cast(int*)(cast(size_t)cast(void*)this + 3436); }
			int m_CountdownTime() { return *cast(int*)(cast(size_t)cast(void*)this + 3432); }
		}
		bool bMenuNotified() { return (*cast(uint*)(cast(size_t)cast(void*)this + 3444) & 0x1) != 0; }
		bool bMenuNotified(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 3444) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 3444) &= ~0x1; } return val; }
	}
final:
	bool RequestPaperDoll()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestPaperDoll, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SendMenuToLobby()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SendMenuToLobby, cast(void*)0, cast(void*)0);
	}
	void ResendReadyCheck()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ResendReadyCheck, cast(void*)0, cast(void*)0);
	}
	void UpdateMenuTimer(int Seconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateMenuTimer, params.ptr, cast(void*)0);
	}
	int GetWaitRemaining()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWaitRemaining, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void NotifyMenuReady()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyMenuReady, cast(void*)0, cast(void*)0);
	}
	void RefreshFriends()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshFriends, cast(void*)0, cast(void*)0);
	}
	void SwapModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SwapModel, cast(void*)0, cast(void*)0);
	}
	void ShowPeach()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowPeach, cast(void*)0, cast(void*)0);
	}
	void ToggleMenuVisible()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleMenuVisible, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void GetPlayerViewPoint(Vector* POVLocation, Rotator* POVRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *POVLocation;
		*cast(Rotator*)&params[12] = *POVRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerViewPoint, params.ptr, cast(void*)0);
		*POVLocation = *cast(Vector*)params.ptr;
		*POVRotation = *cast(Rotator*)&params[12];
	}
	void SwingCamera(float TargetPitch, float TargetYaw, float TargetRoll)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = TargetPitch;
		*cast(float*)&params[4] = TargetYaw;
		*cast(float*)&params[8] = TargetRoll;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwingCamera, params.ptr, cast(void*)0);
	}
	void SwingCameraBack()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SwingCameraBack, cast(void*)0, cast(void*)0);
	}
	void PreloadTexturesTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreloadTexturesTimer, cast(void*)0, cast(void*)0);
	}
	void NotifyMenuReadyTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyMenuReadyTimer, cast(void*)0, cast(void*)0);
	}
	void RequestPaperDollTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestPaperDollTimer, cast(void*)0, cast(void*)0);
	}
	void BeginQueueResendTimer(int SecondsLeft)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SecondsLeft;
		(cast(ScriptObject)this).ProcessEvent(Functions.BeginQueueResendTimer, params.ptr, cast(void*)0);
	}
	void ClearQueueResendTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearQueueResendTimer, cast(void*)0, cast(void*)0);
	}
	void LoadingTimer(bool bStart)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bStart;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadingTimer, params.ptr, cast(void*)0);
	}
	void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitInputSystem, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void OnControllerChanged(int ControllerId, bool bIsConnected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(bool*)&params[4] = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnControllerChanged, params.ptr, cast(void*)0);
	}
	void OnGameInviteReceived(ubyte LocalUserNum, ScriptString RequestingNick)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = RequestingNick;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGameInviteReceived, params.ptr, cast(void*)0);
	}
	void OnFriendInviteReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId RequestingPlayer, ScriptString RequestingNick, ScriptString Message)
	{
		ubyte params[36];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = RequestingPlayer;
		*cast(ScriptString*)&params[12] = RequestingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFriendInviteReceived, params.ptr, cast(void*)0);
	}
	void OnFriendMessageReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId SendingPlayer, ScriptString SendingNick, ScriptString Message)
	{
		ubyte params[36];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = SendingPlayer;
		*cast(ScriptString*)&params[12] = SendingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFriendMessageReceived, params.ptr, cast(void*)0);
	}
	void OnConnectionStatusChange(OnlineSubsystem.EOnlineServerConnectionStatus ConnectionStatus)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)params.ptr = ConnectionStatus;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnConnectionStatusChange, params.ptr, cast(void*)0);
	}
	void OnLinkStatusChanged(bool bConnected)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bConnected;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLinkStatusChanged, params.ptr, cast(void*)0);
	}
	void QuitToMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.QuitToMainMenu, cast(void*)0, cast(void*)0);
	}
	void SetPawnConstructionScene(bool bShow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShow;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPawnConstructionScene, params.ptr, cast(void*)0);
	}
	void ShowMidGameMenu(ScriptName TabTag, bool bEnableInput)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TabTag;
		*cast(bool*)&params[8] = bEnableInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowMidGameMenu, params.ptr, cast(void*)0);
	}
	void ShowScoreboard()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowScoreboard, cast(void*)0, cast(void*)0);
	}
	void Pose(int PoseId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PoseId;
		(cast(ScriptObject)this).ProcessEvent(Functions.Pose, params.ptr, cast(void*)0);
	}
	void Weap(int WeapId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = WeapId;
		(cast(ScriptObject)this).ProcessEvent(Functions.Weap, params.ptr, cast(void*)0);
	}
	void Char(int CharID)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = CharID;
		(cast(ScriptObject)this).ProcessEvent(Functions.Char, params.ptr, cast(void*)0);
	}
	void UpdatePaperDoll_Device(ScriptClass DeviceClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeviceClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePaperDoll_Device, params.ptr, cast(void*)0);
	}
	void ClearMainMenuPaperDoll()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearMainMenuPaperDoll, cast(void*)0, cast(void*)0);
	}
	void UpdateMainMenuPaperDoll_Mesh(TrObject.EContentDataType Type)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.EContentDataType*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateMainMenuPaperDoll_Mesh, params.ptr, cast(void*)0);
	}
	void UpdatePaperDoll(ScriptClass FamilyInfoClass, ScriptClass DeviceClass, ScriptClass skinClass, int TeamNum)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = FamilyInfoClass;
		*cast(ScriptClass*)&params[4] = DeviceClass;
		*cast(ScriptClass*)&params[8] = skinClass;
		*cast(int*)&params[12] = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdatePaperDoll, params.ptr, cast(void*)0);
	}
	void OnDeviceContentDataClassLoaded(ScriptClass DeviceContentDataClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeviceContentDataClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDeviceContentDataClassLoaded, params.ptr, cast(void*)0);
	}
	void OnClassSelectedMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnClassSelectedMainMenu, cast(void*)0, cast(void*)0);
	}
	void On3PSkinContentLoaded(ScriptClass Skin3PDataClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Skin3PDataClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.On3PSkinContentLoaded, params.ptr, cast(void*)0);
	}
	void RefreshFriendsTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefreshFriendsTimer, cast(void*)0, cast(void*)0);
	}
	void SwapModelTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SwapModelTimer, cast(void*)0, cast(void*)0);
	}
	void ShowPeachTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowPeachTimer, cast(void*)0, cast(void*)0);
	}
}
