module UnrealScript.TribesGame.TrEntryPlayerController;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrEntryPlayerController")()); }
	private static __gshared TrEntryPlayerController mDefaultProperties;
	@property final static TrEntryPlayerController DefaultProperties() { mixin(MGDPC!(TrEntryPlayerController, "TrEntryPlayerController TribesGame.Default__TrEntryPlayerController")()); }
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
			ScriptFunction RequestPaperDoll() { mixin(MGF!("mRequestPaperDoll", "Function TribesGame.TrEntryPlayerController.RequestPaperDoll")()); }
			ScriptFunction SendMenuToLobby() { mixin(MGF!("mSendMenuToLobby", "Function TribesGame.TrEntryPlayerController.SendMenuToLobby")()); }
			ScriptFunction ResendReadyCheck() { mixin(MGF!("mResendReadyCheck", "Function TribesGame.TrEntryPlayerController.ResendReadyCheck")()); }
			ScriptFunction UpdateMenuTimer() { mixin(MGF!("mUpdateMenuTimer", "Function TribesGame.TrEntryPlayerController.UpdateMenuTimer")()); }
			ScriptFunction GetWaitRemaining() { mixin(MGF!("mGetWaitRemaining", "Function TribesGame.TrEntryPlayerController.GetWaitRemaining")()); }
			ScriptFunction NotifyMenuReady() { mixin(MGF!("mNotifyMenuReady", "Function TribesGame.TrEntryPlayerController.NotifyMenuReady")()); }
			ScriptFunction RefreshFriends() { mixin(MGF!("mRefreshFriends", "Function TribesGame.TrEntryPlayerController.RefreshFriends")()); }
			ScriptFunction SwapModel() { mixin(MGF!("mSwapModel", "Function TribesGame.TrEntryPlayerController.SwapModel")()); }
			ScriptFunction ShowPeach() { mixin(MGF!("mShowPeach", "Function TribesGame.TrEntryPlayerController.ShowPeach")()); }
			ScriptFunction ToggleMenuVisible() { mixin(MGF!("mToggleMenuVisible", "Function TribesGame.TrEntryPlayerController.ToggleMenuVisible")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrEntryPlayerController.PostBeginPlay")()); }
			ScriptFunction GetPlayerViewPoint() { mixin(MGF!("mGetPlayerViewPoint", "Function TribesGame.TrEntryPlayerController.GetPlayerViewPoint")()); }
			ScriptFunction SwingCamera() { mixin(MGF!("mSwingCamera", "Function TribesGame.TrEntryPlayerController.SwingCamera")()); }
			ScriptFunction SwingCameraBack() { mixin(MGF!("mSwingCameraBack", "Function TribesGame.TrEntryPlayerController.SwingCameraBack")()); }
			ScriptFunction PreloadTexturesTimer() { mixin(MGF!("mPreloadTexturesTimer", "Function TribesGame.TrEntryPlayerController.PreloadTexturesTimer")()); }
			ScriptFunction NotifyMenuReadyTimer() { mixin(MGF!("mNotifyMenuReadyTimer", "Function TribesGame.TrEntryPlayerController.NotifyMenuReadyTimer")()); }
			ScriptFunction RequestPaperDollTimer() { mixin(MGF!("mRequestPaperDollTimer", "Function TribesGame.TrEntryPlayerController.RequestPaperDollTimer")()); }
			ScriptFunction BeginQueueResendTimer() { mixin(MGF!("mBeginQueueResendTimer", "Function TribesGame.TrEntryPlayerController.BeginQueueResendTimer")()); }
			ScriptFunction ClearQueueResendTimer() { mixin(MGF!("mClearQueueResendTimer", "Function TribesGame.TrEntryPlayerController.ClearQueueResendTimer")()); }
			ScriptFunction LoadingTimer() { mixin(MGF!("mLoadingTimer", "Function TribesGame.TrEntryPlayerController.LoadingTimer")()); }
			ScriptFunction InitInputSystem() { mixin(MGF!("mInitInputSystem", "Function TribesGame.TrEntryPlayerController.InitInputSystem")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrEntryPlayerController.Destroyed")()); }
			ScriptFunction OnControllerChanged() { mixin(MGF!("mOnControllerChanged", "Function TribesGame.TrEntryPlayerController.OnControllerChanged")()); }
			ScriptFunction OnGameInviteReceived() { mixin(MGF!("mOnGameInviteReceived", "Function TribesGame.TrEntryPlayerController.OnGameInviteReceived")()); }
			ScriptFunction OnFriendInviteReceived() { mixin(MGF!("mOnFriendInviteReceived", "Function TribesGame.TrEntryPlayerController.OnFriendInviteReceived")()); }
			ScriptFunction OnFriendMessageReceived() { mixin(MGF!("mOnFriendMessageReceived", "Function TribesGame.TrEntryPlayerController.OnFriendMessageReceived")()); }
			ScriptFunction OnConnectionStatusChange() { mixin(MGF!("mOnConnectionStatusChange", "Function TribesGame.TrEntryPlayerController.OnConnectionStatusChange")()); }
			ScriptFunction OnLinkStatusChanged() { mixin(MGF!("mOnLinkStatusChanged", "Function TribesGame.TrEntryPlayerController.OnLinkStatusChanged")()); }
			ScriptFunction QuitToMainMenu() { mixin(MGF!("mQuitToMainMenu", "Function TribesGame.TrEntryPlayerController.QuitToMainMenu")()); }
			ScriptFunction SetPawnConstructionScene() { mixin(MGF!("mSetPawnConstructionScene", "Function TribesGame.TrEntryPlayerController.SetPawnConstructionScene")()); }
			ScriptFunction ShowMidGameMenu() { mixin(MGF!("mShowMidGameMenu", "Function TribesGame.TrEntryPlayerController.ShowMidGameMenu")()); }
			ScriptFunction ShowScoreboard() { mixin(MGF!("mShowScoreboard", "Function TribesGame.TrEntryPlayerController.ShowScoreboard")()); }
			ScriptFunction Pose() { mixin(MGF!("mPose", "Function TribesGame.TrEntryPlayerController.Pose")()); }
			ScriptFunction Weap() { mixin(MGF!("mWeap", "Function TribesGame.TrEntryPlayerController.Weap")()); }
			ScriptFunction Char() { mixin(MGF!("mChar", "Function TribesGame.TrEntryPlayerController.Char")()); }
			ScriptFunction UpdatePaperDoll_Device() { mixin(MGF!("mUpdatePaperDoll_Device", "Function TribesGame.TrEntryPlayerController.UpdatePaperDoll_Device")()); }
			ScriptFunction ClearMainMenuPaperDoll() { mixin(MGF!("mClearMainMenuPaperDoll", "Function TribesGame.TrEntryPlayerController.ClearMainMenuPaperDoll")()); }
			ScriptFunction UpdateMainMenuPaperDoll_Mesh() { mixin(MGF!("mUpdateMainMenuPaperDoll_Mesh", "Function TribesGame.TrEntryPlayerController.UpdateMainMenuPaperDoll_Mesh")()); }
			ScriptFunction UpdatePaperDoll() { mixin(MGF!("mUpdatePaperDoll", "Function TribesGame.TrEntryPlayerController.UpdatePaperDoll")()); }
			ScriptFunction OnDeviceContentDataClassLoaded() { mixin(MGF!("mOnDeviceContentDataClassLoaded", "Function TribesGame.TrEntryPlayerController.OnDeviceContentDataClassLoaded")()); }
			ScriptFunction OnClassSelectedMainMenu() { mixin(MGF!("mOnClassSelectedMainMenu", "Function TribesGame.TrEntryPlayerController.OnClassSelectedMainMenu")()); }
			ScriptFunction On3PSkinContentLoaded() { mixin(MGF!("mOn3PSkinContentLoaded", "Function TribesGame.TrEntryPlayerController.On3PSkinContentLoaded")()); }
			ScriptFunction RefreshFriendsTimer() { mixin(MGF!("mRefreshFriendsTimer", "Function TribesGame.TrEntryPlayerController.RefreshFriendsTimer")()); }
			ScriptFunction SwapModelTimer() { mixin(MGF!("mSwapModelTimer", "Function TribesGame.TrEntryPlayerController.SwapModelTimer")()); }
			ScriptFunction ShowPeachTimer() { mixin(MGF!("mShowPeachTimer", "Function TribesGame.TrEntryPlayerController.ShowPeachTimer")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(PostProcessChain) OldPostProcessChain() { mixin(MGPC!(ScriptArray!(PostProcessChain), 3452)()); }
			float m_fCameraRotationInterpTime() { mixin(MGPC!(float, 3560)()); }
			float m_fCameraRotationCurrTime() { mixin(MGPC!(float, 3556)()); }
			Rotator m_rTargetCameraRotation() { mixin(MGPC!(Rotator, 3544)()); }
			Rotator m_rInitialCameraRotation() { mixin(MGPC!(Rotator, 3532)()); }
			Vector m_CameraLocation4x3() { mixin(MGPC!(Vector, 3520)()); }
			Vector m_CameraLocation16x10() { mixin(MGPC!(Vector, 3508)()); }
			Vector m_CameraLocation16x9() { mixin(MGPC!(Vector, 3496)()); }
			float m_PreloadTextureTime() { mixin(MGPC!(float, 3492)()); }
			TrObject.EContentDataType m_ContentDataType() { mixin(MGPC!(TrObject.EContentDataType, 3488)()); }
			TrPaperDollMainMenu m_MainMenuPaperDoll() { mixin(MGPC!(TrPaperDollMainMenu, 3484)()); }
			ScriptString MainMenuContentClassName() { mixin(MGPC!(ScriptString, 3472)()); }
			TrMainMenuContentData m_MainMenuContentData() { mixin(MGPC!(TrMainMenuContentData, 3468)()); }
			LocalPlayer OldPlayer() { mixin(MGPC!(LocalPlayer, 3464)()); }
			PostProcessChain EntryPostProcessChain() { mixin(MGPC!(PostProcessChain, 3448)()); }
			int MAX_RESEND_WAIT_TIME() { mixin(MGPC!(int, 3440)()); }
			int MIN_RESEND_WAIT_TIME() { mixin(MGPC!(int, 3436)()); }
			int m_CountdownTime() { mixin(MGPC!(int, 3432)()); }
		}
		bool bMenuNotified() { mixin(MGBPC!(3444, 0x1)()); }
		bool bMenuNotified(bool val) { mixin(MSBPC!(3444, 0x1)()); }
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
	void GetPlayerViewPoint(ref Vector POVLocation, ref Rotator POVRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = POVLocation;
		*cast(Rotator*)&params[12] = POVRotation;
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
