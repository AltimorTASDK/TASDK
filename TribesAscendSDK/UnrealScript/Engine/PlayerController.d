module UnrealScript.Engine.PlayerController;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_CameraLookAt;
import UnrealScript.Engine.SeqAct_SetSoundMode;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.SeqAct_ControlMovieTexture;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.CheatManager;
import UnrealScript.Engine.SeqAct_ToggleInput;
import UnrealScript.Engine.ForceFeedbackManager;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.Engine.Player;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.SeqAct_Destroy;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.CoverReplicator;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.SeqAct_ToggleCinematicMode;
import UnrealScript.Engine.UIDataStore_OnlinePlayerData;
import UnrealScript.Engine.LevelStreaming;
import UnrealScript.Engine.SavedMove;
import UnrealScript.Engine.SeqAct_DrawText;
import UnrealScript.Engine.SeqAct_FlyThroughHasEnded;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.AnimNotify_Rumble;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.NetConnection;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.TextureMovie;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.SeqAct_ConsoleCommand;
import UnrealScript.Engine.SeqAct_CameraShake;
import UnrealScript.Engine.SeqAct_ForceFeedback;
import UnrealScript.Engine.InterpTrackInstDirector;
import UnrealScript.Engine.HUD;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.UIInteraction;
import UnrealScript.Engine.SeqAct_SetCameraTarget;
import UnrealScript.Engine.SeqAct_ToggleHUD;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.Font;
import UnrealScript.Engine.Interaction;
import UnrealScript.Engine.Trigger;
import UnrealScript.Engine.Weapon;

extern(C++) interface PlayerController : Controller
{
public extern(D):
	enum
	{
		MAXCLIENTUPDATEINTERVAL = 0.25,
		CLIENTADJUSTUPDATECOST = 180.0,
		MAXVEHICLEPOSITIONERRORSQUARED = 900.0,
		MAXNEARZEROVELOCITYSQUARED = 9.0,
		MAXPOSITIONERRORSQUARED = 3.0,
	}
	enum EProgressMessageType : ubyte
	{
		PMT_Clear = 0,
		PMT_Information = 1,
		PMT_AdminMessage = 2,
		PMT_DownloadProgress = 3,
		PMT_ConnectionFailure = 4,
		PMT_PeerConnectionFailure = 5,
		PMT_PeerHostMigrationFailure = 6,
		PMT_SocketFailure = 7,
		PMT_MAX = 8,
	}
	enum EInputMatchAction : ubyte
	{
		IMA_GreaterThan = 0,
		IMA_LessThan = 1,
		IMA_MAX = 2,
	}
	enum EInputTypes : ubyte
	{
		IT_XAxis = 0,
		IT_YAxis = 1,
		IT_MAX = 2,
	}
	struct DebugTextInfo
	{
		private ubyte __buffer__[72];
	public extern(D):
		@property final
		{
			auto ref
			{
				Actor SrcActor() { return *cast(Actor*)(cast(size_t)&this + 0); }
				float TimeRemaining() { return *cast(float*)(cast(size_t)&this + 40); }
				// WARNING: Property 'Font' has the same name as a defined type!
				Vector SrcActorOffset() { return *cast(Vector*)(cast(size_t)&this + 4); }
				Vector SrcActorDesiredOffset() { return *cast(Vector*)(cast(size_t)&this + 16); }
				float Duration() { return *cast(float*)(cast(size_t)&this + 44); }
				Vector OrigActorLocation() { return *cast(Vector*)(cast(size_t)&this + 56); }
				UObject.Color TextColor() { return *cast(UObject.Color*)(cast(size_t)&this + 48); }
				ScriptString DebugText() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
			}
			bool bAbsoluteLocation() { return (*cast(uint*)(cast(size_t)&this + 52) & 0x1) != 0; }
			bool bAbsoluteLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 52) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 52) &= ~0x1; } return val; }
			bool bKeepAttachedToActor() { return (*cast(uint*)(cast(size_t)&this + 52) & 0x2) != 0; }
			bool bKeepAttachedToActor(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 52) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 52) &= ~0x2; } return val; }
		}
	}
	struct ConnectedPeerInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId PlayerID() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
				OnlineSubsystem.ENATType NatType() { return *cast(OnlineSubsystem.ENATType*)(cast(size_t)&this + 8); }
			}
			bool bLostConnectionToHost() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bLostConnectionToHost(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	struct ClientAdjustment
	{
		private ubyte __buffer__[49];
	public extern(D):
		@property final auto ref
		{
			Actor.EPhysics newPhysics() { return *cast(Actor.EPhysics*)(cast(size_t)&this + 4); }
			Vector NewLoc() { return *cast(Vector*)(cast(size_t)&this + 8); }
			Vector NewVel() { return *cast(Vector*)(cast(size_t)&this + 20); }
			Actor NewBase() { return *cast(Actor*)(cast(size_t)&this + 32); }
			Vector NewFloor() { return *cast(Vector*)(cast(size_t)&this + 36); }
			float TimeStamp() { return *cast(float*)(cast(size_t)&this + 0); }
			ubyte bAckGoodMove() { return *cast(ubyte*)(cast(size_t)&this + 48); }
		}
	}
	struct InputMatchRequest
	{
		private ubyte __buffer__[60];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(PlayerController.InputEntry) Inputs() { return *cast(ScriptArray!(PlayerController.InputEntry)*)(cast(size_t)&this + 0); }
			Actor MatchActor() { return *cast(Actor*)(cast(size_t)&this + 12); }
			ScriptName MatchFuncName() { return *cast(ScriptName*)(cast(size_t)&this + 16); }
			ScriptName FailedFuncName() { return *cast(ScriptName*)(cast(size_t)&this + 36); }
			ScriptName RequestName() { return *cast(ScriptName*)(cast(size_t)&this + 44); }
			int MatchIdx() { return *cast(int*)(cast(size_t)&this + 52); }
			float LastMatchTime() { return *cast(float*)(cast(size_t)&this + 56); }
		}
	}
	struct InputEntry
	{
		private ubyte __buffer__[13];
	public extern(D):
		@property final auto ref
		{
			PlayerController.EInputTypes Type() { return *cast(PlayerController.EInputTypes*)(cast(size_t)&this + 0); }
			float Value() { return *cast(float*)(cast(size_t)&this + 4); }
			float TimeDelta() { return *cast(float*)(cast(size_t)&this + 8); }
			PlayerController.EInputMatchAction Action() { return *cast(PlayerController.EInputMatchAction*)(cast(size_t)&this + 12); }
		}
	}
	@property final
	{
		auto ref
		{
			float LODDistanceFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 960); }
			// WARNING: Property 'Player' has the same name as a defined type!
			Actor ViewTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 936); }
			Camera PlayerCamera() { return *cast(Camera*)(cast(size_t)cast(void*)this + 904); }
			CoverReplicator MyCoverReplicator() { return *cast(CoverReplicator*)(cast(size_t)cast(void*)this + 1352); }
			float MaxTimeMargin() { return *cast(float*)(cast(size_t)cast(void*)this + 1044); }
			float MaxResponseTime() { return *cast(float*)(cast(size_t)cast(void*)this + 916); }
			float LastActiveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1048); }
			OnlineSubsystem OnlineSub() { return *cast(OnlineSubsystem*)(cast(size_t)cast(void*)this + 1248); }
			ScriptArray!(PlayerController.ConnectedPeerInfo) ConnectedPeers() { return *cast(ScriptArray!(PlayerController.ConnectedPeerInfo)*)(cast(size_t)cast(void*)this + 1220); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) BestNextHostPeers() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)cast(void*)this + 1232); }
			OnlineGameSearch MigratedSearchToJoin() { return *cast(OnlineGameSearch*)(cast(size_t)cast(void*)this + 1244); }
			float TimeMargin() { return *cast(float*)(cast(size_t)cast(void*)this + 1036); }
			HUD myHUD() { return *cast(HUD*)(cast(size_t)cast(void*)this + 992); }
			float WaitDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 920); }
			SavedMove SavedMoves() { return *cast(SavedMove*)(cast(size_t)cast(void*)this + 1000); }
			SavedMove PendingMove() { return *cast(SavedMove*)(cast(size_t)cast(void*)this + 1008); }
			// WARNING: Property 'PlayerInput' has the same name as a defined type!
			ScriptClass InputClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1136); }
			ScriptArray!(Interaction) Interactions() { return *cast(ScriptArray!(Interaction)*)(cast(size_t)cast(void*)this + 1172); }
			ScriptString ForceFeedbackManagerClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1156); }
			// WARNING: Property 'ForceFeedbackManager' has the same name as a defined type!
			UIDataStore_OnlinePlayerData OnlinePlayerData() { return *cast(UIDataStore_OnlinePlayerData*)(cast(size_t)cast(void*)this + 1260); }
			Pawn AcknowledgedPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 924); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) HearSoundActiveComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 1384); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) HearSoundPoolComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 1396); }
			float FOVAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 948); }
			float DefaultFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 956); }
			float DesiredFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 952); }
			float LastBroadcastTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1288); }
			ScriptString LastBroadcastString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1292); }
			float LastUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1028); }
			float CurrentTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1024); }
			float LastSpeedHackLog() { return *cast(float*)(cast(size_t)cast(void*)this + 1064); }
			PlayerController.ClientAdjustment PendingAdjustment() { return *cast(PlayerController.ClientAdjustment*)(cast(size_t)cast(void*)this + 1068); }
			float ServerTimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1032); }
			ScriptClass SavedMoveClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 996); }
			int ClientCap() { return *cast(int*)(cast(size_t)cast(void*)this + 1052); }
			float LastPingUpdate() { return *cast(float*)(cast(size_t)cast(void*)this + 1060); }
			SavedMove FreeMoves() { return *cast(SavedMove*)(cast(size_t)cast(void*)this + 1004); }
			Vector LastAckedAccel() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1012); }
			ubyte bRun() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 931); }
			ubyte bDuck() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 932); }
			float ClientUpdateTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1040); }
			float InteractDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 1264); }
			ScriptClass CameraClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 908); }
			Actor.EDoubleClickDir DoubleClickDir() { return *cast(Actor.EDoubleClickDir*)(cast(size_t)cast(void*)this + 928); }
			int GroundPitch() { return *cast(int*)(cast(size_t)cast(void*)this + 1120); }
			float LastSpectatorStateSynchTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1420); }
			float SpectatorCameraSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 1368); }
			PlayerReplicationInfo RealViewTarget() { return *cast(PlayerReplicationInfo*)(cast(size_t)cast(void*)this + 940); }
			float MinRespawnDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 1376); }
			NetConnection PendingSwapConnection() { return *cast(NetConnection*)(cast(size_t)cast(void*)this + 1372); }
			ubyte bIgnoreMoveInput() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 929); }
			ubyte bIgnoreLookInput() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 930); }
			ScriptArray!(ScriptName) PendingMapChangeLevelNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 1340); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) VoicePacketFilter() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)cast(void*)this + 1208); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) GameplayVoiceMuteList() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)cast(void*)this + 1196); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) VoiceMuteList() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)cast(void*)this + 1184); }
			ScriptArray!(PlayerController.DebugTextInfo) DebugTextList() { return *cast(ScriptArray!(PlayerController.DebugTextInfo)*)(cast(size_t)cast(void*)this + 1356); }
			ubyte NetPlayerIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 933); }
			// WARNING: Property 'CheatManager' has the same name as a defined type!
			InterpTrackInstDirector ControllingDirTrackInst() { return *cast(InterpTrackInstDirector*)(cast(size_t)cast(void*)this + 944); }
			Rotator TargetViewRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 964); }
			float TargetEyeHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 976); }
			Rotator BlendedTargetViewRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 980); }
			float DynamicPingThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 1056); }
			ScriptClass CheatClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1128); }
			Vector FailedPathStart() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1140); }
			ScriptName DelayedJoinSessionName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1268); }
			ScriptArray!(PlayerController.InputMatchRequest) InputRequests() { return *cast(ScriptArray!(PlayerController.InputMatchRequest)*)(cast(size_t)cast(void*)this + 1276); }
			int MaxConcurrentHearSounds() { return *cast(int*)(cast(size_t)cast(void*)this + 1380); }
			ScriptArray!(Actor) HiddenActors() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 1408); }
		}
		bool bIsExternalUIOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x400000) != 0; }
		bool bIsExternalUIOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x400000; } return val; }
		bool bPendingDestroy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x200) != 0; }
		bool bPendingDestroy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x200; } return val; }
		bool bIsControllerConnected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x800000) != 0; }
		bool bIsControllerConnected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x800000; } return val; }
		bool bShortConnectTimeOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x100) != 0; }
		bool bShortConnectTimeOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x100; } return val; }
		bool bFrozen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x1) != 0; }
		bool bFrozen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x1; } return val; }
		bool bWasSpeedHack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x400) != 0; }
		bool bWasSpeedHack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x400; } return val; }
		bool bDoubleJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x4) != 0; }
		bool bDoubleJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x4; } return val; }
		bool bUpdatePosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x8) != 0; }
		bool bUpdatePosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x8; } return val; }
		bool bPressedJump() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x2) != 0; }
		bool bPressedJump(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x2; } return val; }
		bool bUpdating() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x10) != 0; }
		bool bUpdating(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x10; } return val; }
		bool bCinematicMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x10000) != 0; }
		bool bCinematicMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x10000; } return val; }
		bool bAimingHelp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x1000) != 0; }
		bool bAimingHelp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x1000; } return val; }
		bool bClientSimulatingViewTarget() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x2000) != 0; }
		bool bClientSimulatingViewTarget(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x2000; } return val; }
		bool bCheatFlying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x40) != 0; }
		bool bCheatFlying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x40; } return val; }
		bool bCinemaDisableInputMove() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x20000) != 0; }
		bool bCinemaDisableInputMove(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x20000; } return val; }
		bool bCinemaDisableInputLook() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x40000) != 0; }
		bool bCinemaDisableInputLook(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x40000; } return val; }
		bool bHasVoiceHandshakeCompleted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x8000) != 0; }
		bool bHasVoiceHandshakeCompleted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x8000; } return val; }
		bool bNeverSwitchOnPickup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x20) != 0; }
		bool bNeverSwitchOnPickup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x20; } return val; }
		bool bCameraPositionLocked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x80) != 0; }
		bool bCameraPositionLocked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x80; } return val; }
		bool bWasSaturated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x800) != 0; }
		bool bWasSaturated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x800; } return val; }
		bool bPreventRespawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x4000) != 0; }
		bool bPreventRespawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x4000; } return val; }
		bool bIgnoreNetworkMessages() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x80000) != 0; }
		bool bIgnoreNetworkMessages(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x80000; } return val; }
		bool bReplicateAllPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x100000) != 0; }
		bool bReplicateAllPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x100000; } return val; }
		bool bIsUsingStreamingVolumes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x200000) != 0; }
		bool bIsUsingStreamingVolumes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x200000; } return val; }
		bool bCheckSoundOcclusion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x1000000) != 0; }
		bool bCheckSoundOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x1000000; } return val; }
		bool bDebugCameraAnims() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x2000000) != 0; }
		bool bDebugCameraAnims(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x2000000; } return val; }
		bool bBlockCameraAnimsFromOverridingPostProcess() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x4000000) != 0; }
		bool bBlockCameraAnimsFromOverridingPostProcess(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x4000000; } return val; }
		bool bLogHearSoundOverflow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x8000000) != 0; }
		bool bLogHearSoundOverflow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x8000000; } return val; }
		bool bCheckRelevancyThroughPortals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x10000000) != 0; }
		bool bCheckRelevancyThroughPortals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x10000000; } return val; }
		bool bDebugClientAdjustPosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 912) & 0x20000000) != 0; }
		bool bDebugClientAdjustPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 912) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 912) &= ~0x20000000; } return val; }
	}
final:
	float GetFOVAngle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4261], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	ScriptString GetPlayerNetworkAddress()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5730], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	Actor GetViewTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6638], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	bool IsPrimaryPlayer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6862], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetNetSpeed(int NewSpeed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewSpeed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7554], params.ptr, cast(void*)0);
	}
	ScriptString GetServerNetworkAddress()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7556], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString ConsoleCommand(ScriptString Command, bool bWriteToLog)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(bool*)&params[12] = bWriteToLog;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7558], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	void ClientTravel(ScriptString pURL, Actor.ETravelType TravelType, bool bSeamless, UObject.Guid MapPackageGuid)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(Actor.ETravelType*)&params[12] = TravelType;
		*cast(bool*)&params[16] = bSeamless;
		*cast(UObject.Guid*)&params[20] = MapPackageGuid;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7562], params.ptr, cast(void*)0);
	}
	void UpdateURL(ScriptString NewOption, ScriptString NewValue, bool bSave1Default)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = NewOption;
		*cast(ScriptString*)&params[12] = NewValue;
		*cast(bool*)&params[24] = bSave1Default;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7567], params.ptr, cast(void*)0);
	}
	ScriptString GetDefaultURL(ScriptString pOption)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pOption;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7571], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void CopyToClipboard(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7574], params.ptr, cast(void*)0);
	}
	ScriptString PasteFromClipboard()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7576], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void SetAllowMatureLanguage(bool bAllowMatureLanguge)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAllowMatureLanguge;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7578], params.ptr, cast(void*)0);
	}
	void SetAudioGroupVolume(ScriptName GroupName, float pVolume)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = GroupName;
		*cast(float*)&params[8] = pVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7580], params.ptr, cast(void*)0);
	}
	void ClientConvolve(ScriptString C, int H)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = C;
		*cast(int*)&params[12] = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7583], params.ptr, cast(void*)0);
	}
	void ServerProcessConvolve(ScriptString C, int H)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = C;
		*cast(int*)&params[12] = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7586], params.ptr, cast(void*)0);
	}
	bool CheckSpeedHack(float DeltaTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7589], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int FindStairRotation(float DeltaTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7592], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void CleanUpAudioComponents()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7595], cast(void*)0, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7596], params.ptr, cast(void*)0);
	}
	void ForceClearUnpauseDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7598], cast(void*)0, cast(void*)0);
	}
	void OnExternalUIChanged(bool bIsOpening)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsOpening;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7600], params.ptr, cast(void*)0);
	}
	bool CanUnpauseExternalUI()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7603], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnControllerChanged(int ControllerId, bool bIsConnected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(bool*)&params[4] = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7606], params.ptr, cast(void*)0);
	}
	bool CanUnpauseControllerConnected()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7614], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	CoverReplicator SpawnCoverReplicator()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7616], params.ptr, cast(void*)0);
		return *cast(CoverReplicator*)params.ptr;
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7620], cast(void*)0, cast(void*)0);
	}
	void ReceivedPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7629], cast(void*)0, cast(void*)0);
	}
	void RegisterPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7630], cast(void*)0, cast(void*)0);
	}
	int FindConnectedPeerIndex(OnlineSubsystem.UniqueNetId PeerNetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7631], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void AddPeer(OnlineSubsystem.UniqueNetId PeerNetId, OnlineSubsystem.ENATType NatType)
	{
		ubyte params[9];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		*cast(OnlineSubsystem.ENATType*)&params[8] = NatType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7638], params.ptr, cast(void*)0);
	}
	void RemovePeer(OnlineSubsystem.UniqueNetId PeerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7646], params.ptr, cast(void*)0);
	}
	void ServerAddPeer(OnlineSubsystem.UniqueNetId PeerNetId, OnlineSubsystem.ENATType NatType)
	{
		ubyte params[9];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		*cast(OnlineSubsystem.ENATType*)&params[8] = NatType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7650], params.ptr, cast(void*)0);
	}
	void ServerRemovePeer(OnlineSubsystem.UniqueNetId PeerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7655], params.ptr, cast(void*)0);
	}
	void ClientUpdateBestNextHosts(OnlineSubsystem.UniqueNetId SortedNextHosts, ubyte NumEntries)
	{
		ubyte params[81];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = SortedNextHosts;
		params[80] = NumEntries;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7659], params.ptr, cast(void*)0);
	}
	void NotifyPeerDisconnectHost(OnlineSubsystem.UniqueNetId PeerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7664], params.ptr, cast(void*)0);
	}
	bool IsBestHostPeer(OnlineSubsystem.UniqueNetId PeerNetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PeerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7667], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	bool MigrateNewHost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7672], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnEndGameForHostMigrate(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7679], params.ptr, cast(void*)0);
	}
	void GetRegisteredPlayersInSession(ScriptName SessionName, ScriptArray!(OnlineSubsystem.UniqueNetId)* OutRegisteredPlayers)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = *OutRegisteredPlayers;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7682], params.ptr, cast(void*)0);
		*OutRegisteredPlayers = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8];
	}
	void RemoveMissingPeersFromSession(ScriptName SessionName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7686], params.ptr, cast(void*)0);
	}
	void OnUnregisterPlayerCompleteForMigrate(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID, bool bWasSuccessful)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		*cast(bool*)&params[16] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7697], params.ptr, cast(void*)0);
	}
	void OnHostMigratedOnlineGame(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7701], params.ptr, cast(void*)0);
	}
	ScriptClass GetCurrentSearchClass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7704], params.ptr, cast(void*)0);
		return *cast(ScriptClass*)params.ptr;
	}
	void PeerDesignatedAsHost(ScriptName SessionName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7706], params.ptr, cast(void*)0);
	}
	void PeerTravelAsHost(float TravelCountdownTimer, ScriptString pURL)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = TravelCountdownTimer;
		*cast(ScriptString*)&params[4] = pURL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7717], params.ptr, cast(void*)0);
	}
	void TellPeerToTravel(OnlineSubsystem.UniqueNetId ToPeerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = ToPeerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7720], params.ptr, cast(void*)0);
	}
	void TellPeerToTravelToSession(OnlineSubsystem.UniqueNetId ToPeerNetId, ScriptName SessionName, ScriptClass SearchClass, ubyte PlatformSpecificInfo, int PlatformSpecificInfoSize)
	{
		ubyte params[104];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = ToPeerNetId;
		*cast(ScriptName*)&params[8] = SessionName;
		*cast(ScriptClass*)&params[16] = SearchClass;
		params[20] = PlatformSpecificInfo;
		*cast(int*)&params[100] = PlatformSpecificInfoSize;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7722], params.ptr, cast(void*)0);
	}
	void PeerReceivedMigratedSession(OnlineSubsystem.UniqueNetId FromPeerNetId, ScriptName SessionName, ScriptClass SearchClass, ubyte PlatformSpecificInfo)
	{
		ubyte params[100];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = FromPeerNetId;
		*cast(ScriptName*)&params[8] = SessionName;
		*cast(ScriptClass*)&params[16] = SearchClass;
		params[20] = PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7728], params.ptr, cast(void*)0);
	}
	void OnEndGameForJoinMigrate(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7737], params.ptr, cast(void*)0);
	}
	void OnJoinMigratedGame(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7743], params.ptr, cast(void*)0);
	}
	void PreRender(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7749], params.ptr, cast(void*)0);
	}
	void ResetTimeMargin()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7751], cast(void*)0, cast(void*)0);
	}
	void ServerShortTimeout()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7753], cast(void*)0, cast(void*)0);
	}
	void ServerGivePawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7757], cast(void*)0, cast(void*)0);
	}
	void KickWarning()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7758], cast(void*)0, cast(void*)0);
	}
	void AddCheats(bool bForce)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7760], params.ptr, cast(void*)0);
	}
	void EnableCheats()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7762], cast(void*)0, cast(void*)0);
	}
	void SpawnDefaultHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7763], cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7765], cast(void*)0, cast(void*)0);
	}
	void ClientReset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7768], cast(void*)0, cast(void*)0);
	}
	void CleanOutSavedMoves()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7769], cast(void*)0, cast(void*)0);
	}
	void PreControllerIdChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7772], cast(void*)0, cast(void*)0);
	}
	void PostControllerIdChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7774], cast(void*)0, cast(void*)0);
	}
	OnlineSubsystem GetOnlineSubsystem()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7780], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem*)params.ptr;
	}
	void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7782], cast(void*)0, cast(void*)0);
	}
	void ClientInitializeDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7794], cast(void*)0, cast(void*)0);
	}
	void RegisterCustomPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7795], cast(void*)0, cast(void*)0);
	}
	void RegisterStandardPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7810], cast(void*)0, cast(void*)0);
	}
	void UnregisterPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7820], cast(void*)0, cast(void*)0);
	}
	void UnregisterStandardPlayerDataStores()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7826], cast(void*)0, cast(void*)0);
	}
	void ReloadProfileSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7834], cast(void*)0, cast(void*)0);
	}
	void SetRumbleScale(float ScaleBy)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = ScaleBy;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7836], params.ptr, cast(void*)0);
	}
	bool IsControllerTiltActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7839], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetControllerTiltDesiredIfAvailable(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7841], params.ptr, cast(void*)0);
	}
	void SetControllerTiltActive(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7843], params.ptr, cast(void*)0);
	}
	void SetOnlyUseControllerTiltInput(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7845], params.ptr, cast(void*)0);
	}
	void SetUseTiltForwardAndBack(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7847], params.ptr, cast(void*)0);
	}
	bool IsKeyboardAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7849], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsMouseAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7851], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClientGotoState(ScriptName NewState, ScriptName NewLabel)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewState;
		*cast(ScriptName*)&params[8] = NewLabel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7853], params.ptr, cast(void*)0);
	}
	void AskForPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7856], cast(void*)0, cast(void*)0);
	}
	void GivePawn(Pawn NewPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7858], params.ptr, cast(void*)0);
	}
	void Possess(Pawn aPawn, bool bVehicleTransition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		*cast(bool*)&params[4] = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7860], params.ptr, cast(void*)0);
	}
	void AcknowledgePossession(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7869], params.ptr, cast(void*)0);
	}
	void ServerAcknowledgePossession(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7874], params.ptr, cast(void*)0);
	}
	void UnPossess()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7876], cast(void*)0, cast(void*)0);
	}
	void PawnDied(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7877], params.ptr, cast(void*)0);
	}
	void ClientSetHUD(ScriptClass newHUDType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = newHUDType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7879], params.ptr, cast(void*)0);
	}
	void HandlePickup(Inventory Inv)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = Inv;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7881], params.ptr, cast(void*)0);
	}
	void CleanupPRI()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7883], cast(void*)0, cast(void*)0);
	}
	void ReceiveLocalizedMessage(ScriptClass Message, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = Message;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7884], params.ptr, cast(void*)0);
	}
	void ClientPlaySound(SoundCue ASound)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = ASound;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7890], params.ptr, cast(void*)0);
	}
	void HearSoundFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7892], params.ptr, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* GetPooledAudioComponent(SoundCue ASound, Actor SourceActor, bool bStopWhenOwnerDestroyed, bool bUseLocation, Vector SourceLocation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(SoundCue*)params.ptr = ASound;
		*cast(Actor*)&params[4] = SourceActor;
		*cast(bool*)&params[8] = bStopWhenOwnerDestroyed;
		*cast(bool*)&params[12] = bUseLocation;
		*cast(Vector*)&params[16] = SourceLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7897], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[28];
	}
	void ClientHearSound(SoundCue ASound, Actor SourceActor, Vector SourceLocation, bool bStopWhenOwnerDestroyed, bool bIsOccluded)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SoundCue*)params.ptr = ASound;
		*cast(Actor*)&params[4] = SourceActor;
		*cast(Vector*)&params[8] = SourceLocation;
		*cast(bool*)&params[20] = bStopWhenOwnerDestroyed;
		*cast(bool*)&params[24] = bIsOccluded;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7904], params.ptr, cast(void*)0);
	}
	bool IsClosestLocalPlayerToActor(Actor TheActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = TheActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7916], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Kismet_ClientPlaySound(SoundCue ASound, Actor SourceActor, float VolumeMultiplier, float PitchMultiplier, float FadeInTime, bool bSuppressSubtitles, bool bSuppressSpatialization)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SoundCue*)params.ptr = ASound;
		*cast(Actor*)&params[4] = SourceActor;
		*cast(float*)&params[8] = VolumeMultiplier;
		*cast(float*)&params[12] = PitchMultiplier;
		*cast(float*)&params[16] = FadeInTime;
		*cast(bool*)&params[20] = bSuppressSubtitles;
		*cast(bool*)&params[24] = bSuppressSpatialization;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7921], params.ptr, cast(void*)0);
	}
	void Kismet_ClientStopSound(SoundCue ASound, Actor SourceActor, float FadeOutTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(SoundCue*)params.ptr = ASound;
		*cast(Actor*)&params[4] = SourceActor;
		*cast(float*)&params[8] = FadeOutTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7938], params.ptr, cast(void*)0);
	}
	void ClientPlayActorFaceFXAnim(Actor SourceActor, FaceFXAnimSet pAnimSet, ScriptString GroupName, ScriptString SeqName, SoundCue SoundCueToPlay)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Actor*)params.ptr = SourceActor;
		*cast(FaceFXAnimSet*)&params[4] = pAnimSet;
		*cast(ScriptString*)&params[8] = GroupName;
		*cast(ScriptString*)&params[20] = SeqName;
		*cast(SoundCue*)&params[32] = SoundCueToPlay;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7946], params.ptr, cast(void*)0);
	}
	void ClientMessage(ScriptString S, ScriptName Type, float MsgLifeTime)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(ScriptName*)&params[12] = Type;
		*cast(float*)&params[20] = MsgLifeTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7952], params.ptr, cast(void*)0);
	}
	bool CanCommunicate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7956], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool AllowTTSMessageFrom(PlayerReplicationInfo PRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7958], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	SoundCue CreateTTSSoundCue(ScriptString StrToSpeak, PlayerReplicationInfo PRI)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = StrToSpeak;
		*cast(PlayerReplicationInfo*)&params[12] = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7961], params.ptr, cast(void*)0);
		return *cast(SoundCue*)&params[16];
	}
	void Talk()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7965], cast(void*)0, cast(void*)0);
	}
	void TeamTalk()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7970], cast(void*)0, cast(void*)0);
	}
	void SpeakTTS(ScriptString S, PlayerReplicationInfo PRI)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		*cast(PlayerReplicationInfo*)&params[12] = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7973], params.ptr, cast(void*)0);
	}
	void TeamMessage(PlayerReplicationInfo PRI, ScriptString S, ScriptName Type, float MsgLifeTime)
	{
		ubyte params[28];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		*cast(ScriptString*)&params[4] = S;
		*cast(ScriptName*)&params[16] = Type;
		*cast(float*)&params[24] = MsgLifeTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7978], params.ptr, cast(void*)0);
	}
	void PlayBeepSound()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7984], cast(void*)0, cast(void*)0);
	}
	void RegisterOnlineDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7985], cast(void*)0, cast(void*)0);
	}
	void OnPartyMemberListChanged(bool bJoinedOrLeft, ScriptString PlayerName, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[24];
		params[] = 0;
		*cast(bool*)params.ptr = bJoinedOrLeft;
		*cast(ScriptString*)&params[4] = PlayerName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[16] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7988], params.ptr, cast(void*)0);
	}
	void OnPartyMembersInfoChanged(ScriptString PlayerName, OnlineSubsystem.UniqueNetId PlayerID, int CustomData1, int CustomData2, int CustomData3, int CustomData4)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[12] = PlayerID;
		*cast(int*)&params[20] = CustomData1;
		*cast(int*)&params[24] = CustomData2;
		*cast(int*)&params[28] = CustomData3;
		*cast(int*)&params[32] = CustomData4;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7992], params.ptr, cast(void*)0);
	}
	void ClearOnlineDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7999], cast(void*)0, cast(void*)0);
	}
	void CleanupPawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8001], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8009], cast(void*)0, cast(void*)0);
	}
	void FixFOV()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8010], cast(void*)0, cast(void*)0);
	}
	void SetFOV(float NewFOV)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewFOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8014], params.ptr, cast(void*)0);
	}
	void ResetFOV()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8016], cast(void*)0, cast(void*)0);
	}
	void FOV(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8017], params.ptr, cast(void*)0);
	}
	bool AllowTextMessage(ScriptString msg)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8019], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void Say(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8025], params.ptr, cast(void*)0);
	}
	void ServerSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8027], params.ptr, cast(void*)0);
	}
	void ClientAdminMessage(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8030], params.ptr, cast(void*)0);
	}
	void TeamSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8033], params.ptr, cast(void*)0);
	}
	void ServerTeamSay(ScriptString msg)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = msg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8035], params.ptr, cast(void*)0);
	}
	void PreClientTravel(ScriptString PendingURL, Actor.ETravelType TravelType, bool bIsSeamlessTravel)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PendingURL;
		*cast(Actor.ETravelType*)&params[12] = TravelType;
		*cast(bool*)&params[16] = bIsSeamlessTravel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8039], params.ptr, cast(void*)0);
	}
	UIInteraction GetUIController()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8045], params.ptr, cast(void*)0);
		return *cast(UIInteraction*)params.ptr;
	}
	// WARNING: Function 'Camera' has the same name as a defined type!
	void ServerCamera(ScriptName NewMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8049], params.ptr, cast(void*)0);
	}
	void ClientSetCameraMode(ScriptName NewCamMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewCamMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8051], params.ptr, cast(void*)0);
	}
	void SetCameraMode(ScriptName NewCamMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewCamMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8053], params.ptr, cast(void*)0);
	}
	void ResetCameraMode()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8055], cast(void*)0, cast(void*)0);
	}
	void ClientSetCameraFade(bool bEnableFading, UObject.Color FadeColor, UObject.Vector2D FadeAlpha, float FadeTime)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableFading;
		*cast(UObject.Color*)&params[4] = FadeColor;
		*cast(UObject.Vector2D*)&params[8] = FadeAlpha;
		*cast(float*)&params[16] = FadeTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8058], params.ptr, cast(void*)0);
	}
	bool UsingFirstPersonCamera()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8063], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ForceDeathUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8065], cast(void*)0, cast(void*)0);
	}
	void DualServerMove(float TimeStamp0, Vector InAccel0, ubyte PendingFlags, int View0, float TimeStamp, Vector InAccel, Vector ClientLoc, ubyte NewFlags, ubyte ClientRoll, int View)
	{
		ubyte params[60];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp0;
		*cast(Vector*)&params[4] = InAccel0;
		params[16] = PendingFlags;
		*cast(int*)&params[20] = View0;
		*cast(float*)&params[24] = TimeStamp;
		*cast(Vector*)&params[28] = InAccel;
		*cast(Vector*)&params[40] = ClientLoc;
		params[52] = NewFlags;
		params[53] = ClientRoll;
		*cast(int*)&params[56] = View;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8067], params.ptr, cast(void*)0);
	}
	void OldServerMove(float OldTimeStamp, ubyte OldAccelX, ubyte OldAccelY, ubyte OldAccelZ, ubyte OldMoveFlags)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = OldTimeStamp;
		params[4] = OldAccelX;
		params[5] = OldAccelY;
		params[6] = OldAccelZ;
		params[7] = OldMoveFlags;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8078], params.ptr, cast(void*)0);
	}
	float GetServerMoveDeltaTime(float TimeStamp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8086], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void ServerMoveHandleClientError(float TimeStamp, Vector Accel, Vector ClientLoc)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(Vector*)&params[4] = Accel;
		*cast(Vector*)&params[16] = ClientLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8092], params.ptr, cast(void*)0);
	}
	void ServerMove(float TimeStamp, Vector InAccel, Vector ClientLoc, ubyte MoveFlags, ubyte ClientRoll, int View)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(Vector*)&params[4] = InAccel;
		*cast(Vector*)&params[16] = ClientLoc;
		params[28] = MoveFlags;
		params[29] = ClientRoll;
		*cast(int*)&params[32] = View;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8109], params.ptr, cast(void*)0);
	}
	void SendClientAdjustment()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8125], cast(void*)0, cast(void*)0);
	}
	void ServerDrive(float InForward, float InStrafe, float aUp, bool InJump, int View)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = InForward;
		*cast(float*)&params[4] = InStrafe;
		*cast(float*)&params[8] = aUp;
		*cast(bool*)&params[12] = InJump;
		*cast(int*)&params[16] = View;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8126], params.ptr, cast(void*)0);
	}
	void ProcessDrive(float InForward, float InStrafe, float InUp, bool InJump)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = InForward;
		*cast(float*)&params[4] = InStrafe;
		*cast(float*)&params[8] = InUp;
		*cast(bool*)&params[12] = InJump;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8133], params.ptr, cast(void*)0);
	}
	void ProcessMove(float DeltaTime, Vector newAccel, Actor.EDoubleClickDir DoubleClickMove, Rotator DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Vector*)&params[4] = newAccel;
		*cast(Actor.EDoubleClickDir*)&params[16] = DoubleClickMove;
		*cast(Rotator*)&params[20] = DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8138], params.ptr, cast(void*)0);
	}
	void MoveAutonomous(float DeltaTime, ubyte CompressedFlags, Vector newAccel, Rotator DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		params[4] = CompressedFlags;
		*cast(Vector*)&params[8] = newAccel;
		*cast(Rotator*)&params[20] = DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8143], params.ptr, cast(void*)0);
	}
	void VeryShortClientAdjustPosition(float TimeStamp, float NewLocX, float NewLocY, float NewLocZ, Actor NewBase)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(float*)&params[4] = NewLocX;
		*cast(float*)&params[8] = NewLocY;
		*cast(float*)&params[12] = NewLocZ;
		*cast(Actor*)&params[16] = NewBase;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8153], params.ptr, cast(void*)0);
	}
	void ShortClientAdjustPosition(float TimeStamp, ScriptName NewState, Actor.EPhysics newPhysics, float NewLocX, float NewLocY, float NewLocZ, Actor NewBase)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(ScriptName*)&params[4] = NewState;
		*cast(Actor.EPhysics*)&params[12] = newPhysics;
		*cast(float*)&params[16] = NewLocX;
		*cast(float*)&params[20] = NewLocY;
		*cast(float*)&params[24] = NewLocZ;
		*cast(Actor*)&params[28] = NewBase;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8160], params.ptr, cast(void*)0);
	}
	void ClientCapBandwidth(int Cap)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Cap;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8169], params.ptr, cast(void*)0);
	}
	void ClientAckGoodMove(float TimeStamp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8172], params.ptr, cast(void*)0);
	}
	void UpdatePing(float TimeStamp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8174], params.ptr, cast(void*)0);
	}
	void ClientAdjustPosition(float TimeStamp, ScriptName NewState, Actor.EPhysics newPhysics, float NewLocX, float NewLocY, float NewLocZ, float NewVelX, float NewVelY, float NewVelZ, Actor NewBase)
	{
		ubyte params[44];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(ScriptName*)&params[4] = NewState;
		*cast(Actor.EPhysics*)&params[12] = newPhysics;
		*cast(float*)&params[16] = NewLocX;
		*cast(float*)&params[20] = NewLocY;
		*cast(float*)&params[24] = NewLocZ;
		*cast(float*)&params[28] = NewVelX;
		*cast(float*)&params[32] = NewVelY;
		*cast(float*)&params[36] = NewVelZ;
		*cast(Actor*)&params[40] = NewBase;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8175], params.ptr, cast(void*)0);
	}
	void LongClientAdjustPosition(float TimeStamp, ScriptName NewState, Actor.EPhysics newPhysics, float NewLocX, float NewLocY, float NewLocZ, float NewVelX, float NewVelY, float NewVelZ, Actor NewBase, float NewFloorX, float NewFloorY, float NewFloorZ)
	{
		ubyte params[56];
		params[] = 0;
		*cast(float*)params.ptr = TimeStamp;
		*cast(ScriptName*)&params[4] = NewState;
		*cast(Actor.EPhysics*)&params[12] = newPhysics;
		*cast(float*)&params[16] = NewLocX;
		*cast(float*)&params[20] = NewLocY;
		*cast(float*)&params[24] = NewLocZ;
		*cast(float*)&params[28] = NewVelX;
		*cast(float*)&params[32] = NewVelY;
		*cast(float*)&params[36] = NewVelZ;
		*cast(Actor*)&params[40] = NewBase;
		*cast(float*)&params[44] = NewFloorX;
		*cast(float*)&params[48] = NewFloorY;
		*cast(float*)&params[52] = NewFloorZ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8190], params.ptr, cast(void*)0);
	}
	void UpdateStateFromAdjustment(ScriptName NewState)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = NewState;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8226], params.ptr, cast(void*)0);
	}
	void ServerUpdatePing(int NewPing)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewPing;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8228], params.ptr, cast(void*)0);
	}
	void ClearAckedMoves()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8231], cast(void*)0, cast(void*)0);
	}
	void ClientUpdatePosition()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8233], cast(void*)0, cast(void*)0);
	}
	SavedMove GetFreeMove()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8250], params.ptr, cast(void*)0);
		return *cast(SavedMove*)params.ptr;
	}
	int CompressAccel(int C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8255], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void ReplicateMove(float DeltaTime, Vector newAccel, Actor.EDoubleClickDir DoubleClickMove, Rotator DeltaRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Vector*)&params[4] = newAccel;
		*cast(Actor.EDoubleClickDir*)&params[16] = DoubleClickMove;
		*cast(Rotator*)&params[20] = DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8258], params.ptr, cast(void*)0);
	}
	void CallServerMove(SavedMove NewMove, Vector ClientLoc, ubyte ClientRoll, int View, SavedMove OldMove)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SavedMove*)params.ptr = NewMove;
		*cast(Vector*)&params[4] = ClientLoc;
		params[16] = ClientRoll;
		*cast(int*)&params[20] = View;
		*cast(SavedMove*)&params[24] = OldMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8281], params.ptr, cast(void*)0);
	}
	void HandleWalking()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8292], cast(void*)0, cast(void*)0);
	}
	void ServerRestartGame()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8293], cast(void*)0, cast(void*)0);
	}
	void RestartLevel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8294], cast(void*)0, cast(void*)0);
	}
	void PauseRumbleForAllPlayers(bool bShouldPauseRumble)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldPauseRumble;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8295], params.ptr, cast(void*)0);
	}
	bool CanUnpause()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8298], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SetPause(bool bPause, 
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* CanUnpauseDelegate)
	{
		ubyte params[20];
		params[] = 0;
		*cast(bool*)params.ptr = bPause;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)&params[4] = CanUnpauseDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8300], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool IsPaused()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8308], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Pause()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8310], cast(void*)0, cast(void*)0);
	}
	void ServerPause()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8311], cast(void*)0, cast(void*)0);
	}
	void ConditionalPause(bool bDesiredPauseState)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDesiredPauseState;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8312], params.ptr, cast(void*)0);
	}
	void ThrowWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8314], cast(void*)0, cast(void*)0);
	}
	void ServerThrowWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8315], cast(void*)0, cast(void*)0);
	}
	void PrevWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8318], cast(void*)0, cast(void*)0);
	}
	void NextWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8319], cast(void*)0, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8320], params.ptr, cast(void*)0);
	}
	void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8324], params.ptr, cast(void*)0);
	}
	void StartAltFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8326], params.ptr, cast(void*)0);
	}
	void StopAltFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8328], params.ptr, cast(void*)0);
	}
	void GetTriggerUseList(float interactDistanceToCheck, float crosshairDist, float minDot, bool bUsuableOnly, ScriptArray!(Trigger)* out_useList)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = interactDistanceToCheck;
		*cast(float*)&params[4] = crosshairDist;
		*cast(float*)&params[8] = minDot;
		*cast(bool*)&params[12] = bUsuableOnly;
		*cast(ScriptArray!(Trigger)*)&params[16] = *out_useList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8330], params.ptr, cast(void*)0);
		*out_useList = *cast(ScriptArray!(Trigger)*)&params[16];
	}
	bool Use()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8344], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ServerUse()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8347], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool PerformedUseAction()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8349], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool FindVehicleToDrive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8351], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool TriggerInteracted()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8361], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Suicide()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8376], cast(void*)0, cast(void*)0);
	}
	void ServerSuicide()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8377], cast(void*)0, cast(void*)0);
	}
	void SetName(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8379], params.ptr, cast(void*)0);
	}
	void ServerChangeName(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8387], params.ptr, cast(void*)0);
	}
	void SwitchTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8389], cast(void*)0, cast(void*)0);
	}
	void ChangeTeam(ScriptString TeamName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TeamName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8391], params.ptr, cast(void*)0);
	}
	void ServerChangeTeam(int N)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = N;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8394], params.ptr, cast(void*)0);
	}
	void ClientSetProgressMessage(PlayerController.EProgressMessageType MessageType, ScriptString Message, ScriptString Title, bool bIgnoreFutureNetworkMessages)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController.EProgressMessageType*)params.ptr = MessageType;
		*cast(ScriptString*)&params[4] = Message;
		*cast(ScriptString*)&params[16] = Title;
		*cast(bool*)&params[28] = bIgnoreFutureNetworkMessages;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8399], params.ptr, cast(void*)0);
	}
	void Restart(bool bVehicleTransition)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bVehicleTransition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8404], params.ptr, cast(void*)0);
	}
	void ServerNotifyLoadedWorld(ScriptName WorldPackageName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WorldPackageName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8406], params.ptr, cast(void*)0);
	}
	void NotifyLoadedWorld(ScriptName WorldPackageName, bool bFinalDest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WorldPackageName;
		*cast(bool*)&params[8] = bFinalDest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8408], params.ptr, cast(void*)0);
	}
	bool HasClientLoadedCurrentWorld()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8414], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ForceSingleNetUpdateFor(Actor Target)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8416], params.ptr, cast(void*)0);
	}
	void EnterStartState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8418], cast(void*)0, cast(void*)0);
	}
	void ClientRestart(Pawn NewPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8426], params.ptr, cast(void*)0);
	}
	void GameHasEnded(Actor EndGameFocus, bool bIsWinner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = EndGameFocus;
		*cast(bool*)&params[4] = bIsWinner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8428], params.ptr, cast(void*)0);
	}
	void ClientGameEnded(Actor EndGameFocus, bool bIsWinner)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = EndGameFocus;
		*cast(bool*)&params[4] = bIsWinner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8431], params.ptr, cast(void*)0);
	}
	void NotifyChangedWeapon(Weapon PreviousWeapon, Weapon NewWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = PreviousWeapon;
		*cast(Weapon*)&params[4] = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8434], params.ptr, cast(void*)0);
	}
	void PlayerTick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8437], params.ptr, cast(void*)0);
	}
	void PlayerMove(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8439], params.ptr, cast(void*)0);
	}
	bool AimingHelp(bool bInstantHit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bInstantHit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8441], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void CameraLookAtFinished(SeqAct_CameraLookAt Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_CameraLookAt*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8445], params.ptr, cast(void*)0);
	}
	Rotator GetAdjustedAimFor(Weapon W, Vector StartFireLoc)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		*cast(Vector*)&params[4] = StartFireLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8447], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[16];
	}
	float AimHelpDot(bool bInstantHit)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bInstantHit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8469], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	bool NotifyLanded(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8472], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void AdjustFOV(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8476], params.ptr, cast(void*)0);
	}
	bool IsLocalPlayerController()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8478], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetViewTarget(Actor NewViewTarget, Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		*cast(Camera.ViewTargetTransitionParams*)&params[4] = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8480], params.ptr, cast(void*)0);
	}
	void SetViewTargetWithBlend(Actor NewViewTarget, float BlendTime, Camera.EViewTargetBlendFunction BlendFunc, float BlendExp, bool bLockOutgoing)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = NewViewTarget;
		*cast(float*)&params[4] = BlendTime;
		*cast(Camera.EViewTargetBlendFunction*)&params[8] = BlendFunc;
		*cast(float*)&params[12] = BlendExp;
		*cast(bool*)&params[16] = bLockOutgoing;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8483], params.ptr, cast(void*)0);
	}
	void ClientSetViewTarget(Actor A, Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = A;
		*cast(Camera.ViewTargetTransitionParams*)&params[4] = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8490], params.ptr, cast(void*)0);
	}
	void ServerVerifyViewTarget()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8494], cast(void*)0, cast(void*)0);
	}
	void SpawnPlayerCamera()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8496], cast(void*)0, cast(void*)0);
	}
	void GetPlayerViewPoint(Vector* out_Location, Rotator* out_Rotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = *out_Location;
		*cast(Rotator*)&params[12] = *out_Rotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8498], params.ptr, cast(void*)0);
		*out_Location = *cast(Vector*)params.ptr;
		*out_Rotation = *cast(Rotator*)&params[12];
	}
	void ViewShake(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8502], params.ptr, cast(void*)0);
	}
	void UpdateRotation(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8504], params.ptr, cast(void*)0);
	}
	void ProcessViewRotation(float DeltaTime, Rotator* out_ViewRotation, Rotator DeltaRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(Rotator*)&params[4] = *out_ViewRotation;
		*cast(Rotator*)&params[16] = DeltaRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8513], params.ptr, cast(void*)0);
		*out_ViewRotation = *cast(Rotator*)&params[4];
	}
	Rotator LimitViewRotation(Rotator ViewRotation, float ViewPitchMin, float ViewPitchMax)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Rotator*)params.ptr = ViewRotation;
		*cast(float*)&params[12] = ViewPitchMin;
		*cast(float*)&params[16] = ViewPitchMax;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8517], params.ptr, cast(void*)0);
		return *cast(Rotator*)&params[20];
	}
	void CheckJumpOrDuck()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8522], cast(void*)0, cast(void*)0);
	}
	bool IsSpectating()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8698], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ServerSetSpectatorLocation(Vector NewLoc)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8700], params.ptr, cast(void*)0);
	}
	void ServerViewNextPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8733], cast(void*)0, cast(void*)0);
	}
	void ServerViewPrevPlayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8734], cast(void*)0, cast(void*)0);
	}
	void ViewAPlayer(int Dir)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Dir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8735], params.ptr, cast(void*)0);
	}
	void ServerViewSelf(Camera.ViewTargetTransitionParams TransitionParams)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Camera.ViewTargetTransitionParams*)params.ptr = TransitionParams;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8745], params.ptr, cast(void*)0);
	}
	bool IsWaiting()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8765], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanRestartPlayer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8985], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8988], params.ptr, cast(void*)0);
	}
	void OnToggleInput(SeqAct_ToggleInput inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleInput*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8990], params.ptr, cast(void*)0);
	}
	void ClientIgnoreMoveInput(bool bIgnore)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIgnore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8996], params.ptr, cast(void*)0);
	}
	void ClientIgnoreLookInput(bool bIgnore)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIgnore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8998], params.ptr, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9000], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	void OnDrawText(SeqAct_DrawText inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_DrawText*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9006], params.ptr, cast(void*)0);
	}
	void ClientDrawKismetText(HUD.KismetDrawTextInfo DrawTextInfo, float DisplayTime)
	{
		ubyte params[56];
		params[] = 0;
		*cast(HUD.KismetDrawTextInfo*)params.ptr = DrawTextInfo;
		*cast(float*)&params[52] = DisplayTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9008], params.ptr, cast(void*)0);
	}
	void ClientClearKismetText(UObject.Vector2D MessageOffset)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = MessageOffset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9011], params.ptr, cast(void*)0);
	}
	void OnSetCameraTarget(SeqAct_SetCameraTarget inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetCameraTarget*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9080], params.ptr, cast(void*)0);
	}
	void OnToggleHUD(SeqAct_ToggleHUD inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleHUD*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9085], params.ptr, cast(void*)0);
	}
	void NotifyTakeHit(Controller InstigatedBy, Vector HitLocation, int Damage, ScriptClass pDamageType, Vector Momentum)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Controller*)params.ptr = InstigatedBy;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(int*)&params[16] = Damage;
		*cast(ScriptClass*)&params[20] = pDamageType;
		*cast(Vector*)&params[24] = Momentum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9088], params.ptr, cast(void*)0);
	}
	void OnForceFeedback(SeqAct_ForceFeedback Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ForceFeedback*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9095], params.ptr, cast(void*)0);
	}
	void ClientStopForceFeedbackWaveform(ForceFeedbackWaveform FFWaveform)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ForceFeedbackWaveform*)params.ptr = FFWaveform;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9099], params.ptr, cast(void*)0);
	}
	void PlayRumble(AnimNotify_Rumble TheAnimNotify)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNotify_Rumble*)params.ptr = TheAnimNotify;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9100], params.ptr, cast(void*)0);
	}
	void ClientPlayForceFeedbackWaveform(ForceFeedbackWaveform FFWaveform, Actor FFWaveformInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ForceFeedbackWaveform*)params.ptr = FFWaveform;
		*cast(Actor*)&params[4] = FFWaveformInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9105], params.ptr, cast(void*)0);
	}
	bool IsForceFeedbackAllowed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9110], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnToggleCinematicMode(SeqAct_ToggleCinematicMode Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleCinematicMode*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9113], params.ptr, cast(void*)0);
	}
	void SetCinematicMode(bool bInCinematicMode, bool bHidePlayer, bool bAffectsHUD, bool bAffectsMovement, bool bAffectsTurning, bool bAffectsButtons)
	{
		ubyte params[24];
		params[] = 0;
		*cast(bool*)params.ptr = bInCinematicMode;
		*cast(bool*)&params[4] = bHidePlayer;
		*cast(bool*)&params[8] = bAffectsHUD;
		*cast(bool*)&params[12] = bAffectsMovement;
		*cast(bool*)&params[16] = bAffectsTurning;
		*cast(bool*)&params[20] = bAffectsButtons;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9122], params.ptr, cast(void*)0);
	}
	void ClientSetCinematicMode(bool bInCinematicMode, bool bAffectsMovement, bool bAffectsTurning, bool bAffectsHUD)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bInCinematicMode;
		*cast(bool*)&params[4] = bAffectsMovement;
		*cast(bool*)&params[8] = bAffectsTurning;
		*cast(bool*)&params[12] = bAffectsHUD;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9133], params.ptr, cast(void*)0);
	}
	void IgnoreMoveInput(bool bNewMoveInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewMoveInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9138], params.ptr, cast(void*)0);
	}
	bool IsMoveInputIgnored()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9140], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void IgnoreLookInput(bool bNewLookInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewLookInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9142], params.ptr, cast(void*)0);
	}
	bool IsLookInputIgnored()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9144], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ResetPlayerMovementInput()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9146], cast(void*)0, cast(void*)0);
	}
	void OnConsoleCommand(SeqAct_ConsoleCommand inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ConsoleCommand*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9147], params.ptr, cast(void*)0);
	}
	void ClientForceGarbageCollection()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9152], cast(void*)0, cast(void*)0);
	}
	void LevelStreamingStatusChanged(LevelStreaming LevelObject, bool bNewShouldBeLoaded, bool bNewShouldBeVisible, bool bNewShouldBlockOnLoad)
	{
		ubyte params[16];
		params[] = 0;
		*cast(LevelStreaming*)params.ptr = LevelObject;
		*cast(bool*)&params[4] = bNewShouldBeLoaded;
		*cast(bool*)&params[8] = bNewShouldBeVisible;
		*cast(bool*)&params[12] = bNewShouldBlockOnLoad;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9154], params.ptr, cast(void*)0);
	}
	void ClientUpdateLevelStreamingStatus(ScriptName PackageName, bool bNewShouldBeLoaded, bool bNewShouldBeVisible, bool bNewShouldBlockOnLoad)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PackageName;
		*cast(bool*)&params[8] = bNewShouldBeLoaded;
		*cast(bool*)&params[12] = bNewShouldBeVisible;
		*cast(bool*)&params[16] = bNewShouldBlockOnLoad;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9160], params.ptr, cast(void*)0);
	}
	void ServerUpdateLevelVisibility(ScriptName PackageName, bool bIsVisible)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PackageName;
		*cast(bool*)&params[8] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9165], params.ptr, cast(void*)0);
	}
	void ClientPrepareMapChange(ScriptName LevelName, bool bFirst, bool bLast)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = LevelName;
		*cast(bool*)&params[8] = bFirst;
		*cast(bool*)&params[12] = bLast;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9168], params.ptr, cast(void*)0);
	}
	void DelayedPrepareMapChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9174], cast(void*)0, cast(void*)0);
	}
	void ClientCommitMapChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9178], cast(void*)0, cast(void*)0);
	}
	void ClientCancelPendingMapChange()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9180], cast(void*)0, cast(void*)0);
	}
	void ClientFlushLevelStreaming()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9182], cast(void*)0, cast(void*)0);
	}
	void ClientSetBlockOnAsyncLoading()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9183], cast(void*)0, cast(void*)0);
	}
	bool IsPlayerMuted(OnlineSubsystem.UniqueNetId* Sender)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = *Sender;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9189], params.ptr, cast(void*)0);
		*Sender = *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
		return *cast(bool*)&params[8];
	}
	void GetSeamlessTravelActorList(bool bToEntry, ScriptArray!(Actor)* ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = *ActorList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9192], params.ptr, cast(void*)0);
		*ActorList = *cast(ScriptArray!(Actor)*)&params[4];
	}
	void SeamlessTravelTo(PlayerController NewPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = NewPC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9196], params.ptr, cast(void*)0);
	}
	void SeamlessTravelFrom(PlayerController OldPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = OldPC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9198], params.ptr, cast(void*)0);
	}
	void ClientSetOnlineStatus()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9200], cast(void*)0, cast(void*)0);
	}
	PlayerController GetPlayerControllerFromNetId(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9201], params.ptr, cast(void*)0);
		return *cast(PlayerController*)&params[8];
	}
	void ClientVoiceHandshakeComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9204], cast(void*)0, cast(void*)0);
	}
	void ClientMutePlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9206], params.ptr, cast(void*)0);
	}
	void ClientUnmutePlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9212], params.ptr, cast(void*)0);
	}
	void GameplayMutePlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9218], params.ptr, cast(void*)0);
	}
	void GameplayUnmutePlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9221], params.ptr, cast(void*)0);
	}
	void ServerMutePlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9226], params.ptr, cast(void*)0);
	}
	void ServerUnmutePlayer(OnlineSubsystem.UniqueNetId PlayerNetId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = PlayerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9229], params.ptr, cast(void*)0);
	}
	void NotifyDirectorControl(bool bNowControlling)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowControlling;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9233], params.ptr, cast(void*)0);
	}
	void SetShowSubtitles(bool bValue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9235], params.ptr, cast(void*)0);
	}
	bool IsShowingSubtitles()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9237], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClientWasKicked()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9239], cast(void*)0, cast(void*)0);
	}
	void ClientRegisterForArbitration()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9240], cast(void*)0, cast(void*)0);
	}
	void OnArbitrationRegisterComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9243], params.ptr, cast(void*)0);
	}
	void ServerRegisteredForArbitration(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9246], params.ptr, cast(void*)0);
	}
	void OnGameInviteAccepted(OnlineGameSearch.OnlineGameSearchResult* InviteResult)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr = *InviteResult;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9248], params.ptr, cast(void*)0);
		*InviteResult = *cast(OnlineGameSearch.OnlineGameSearchResult*)params.ptr;
	}
	bool InviteHasEnoughSpace(OnlineGameSettings InviteSettings)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineGameSettings*)params.ptr = InviteSettings;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9255], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool CanAllPlayersPlayOnline()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9262], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClearInviteDelegates()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9268], cast(void*)0, cast(void*)0);
	}
	void OnEndForInviteComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9269], params.ptr, cast(void*)0);
	}
	void OnDestroyForInviteComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9274], params.ptr, cast(void*)0);
	}
	ScriptString ModifyClientURL(ScriptString pURL)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9277], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void OnInviteJoinComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9280], params.ptr, cast(void*)0);
	}
	void NotifyInviteFailed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9289], cast(void*)0, cast(void*)0);
	}
	void NotifyNotAllPlayersCanJoinInvite()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9290], cast(void*)0, cast(void*)0);
	}
	void NotifyNotEnoughSpaceInInvite()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9291], cast(void*)0, cast(void*)0);
	}
	void ClientArbitratedMatchEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9292], cast(void*)0, cast(void*)0);
	}
	void ClientWriteOnlinePlayerScores(int LeaderboardId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = LeaderboardId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9293], params.ptr, cast(void*)0);
	}
	void ClientWriteLeaderboardStats(ScriptClass OnlineStatsWriteClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = OnlineStatsWriteClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9306], params.ptr, cast(void*)0);
	}
	void ClientSetHostUniqueId(OnlineSubsystem.UniqueNetId InHostId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = InHostId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9308], params.ptr, cast(void*)0);
	}
	void ClientStopNetworkedVoice()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9310], cast(void*)0, cast(void*)0);
	}
	void ClientStartNetworkedVoice()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9312], cast(void*)0, cast(void*)0);
	}
	void OnDestroy(SeqAct_Destroy Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Destroy*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9314], params.ptr, cast(void*)0);
	}
	void DrawDebugTextList(Canvas pCanvas, float RenderDelta)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = RenderDelta;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9316], params.ptr, cast(void*)0);
	}
	void AddDebugText(ScriptString DebugText, Actor SrcActor, float Duration, Vector Offset, Vector DesiredOffset, UObject.Color TextColor, bool bSkipOverwriteCheck, bool bAbsoluteLocation, bool bKeepAttachedToActor, Font InFont)
	{
		ubyte params[64];
		params[] = 0;
		*cast(ScriptString*)params.ptr = DebugText;
		*cast(Actor*)&params[12] = SrcActor;
		*cast(float*)&params[16] = Duration;
		*cast(Vector*)&params[20] = Offset;
		*cast(Vector*)&params[32] = DesiredOffset;
		*cast(UObject.Color*)&params[44] = TextColor;
		*cast(bool*)&params[48] = bSkipOverwriteCheck;
		*cast(bool*)&params[52] = bAbsoluteLocation;
		*cast(bool*)&params[56] = bKeepAttachedToActor;
		*cast(Font*)&params[60] = InFont;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9342], params.ptr, cast(void*)0);
	}
	void RemoveDebugText(Actor SrcActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = SrcActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9354], params.ptr, cast(void*)0);
	}
	void RemoveAllDebugStrings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9357], cast(void*)0, cast(void*)0);
	}
	void ClientRegisterHostStatGuid(ScriptString StatGuid)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = StatGuid;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9358], params.ptr, cast(void*)0);
	}
	void OnRegisterHostStatGuidComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9362], params.ptr, cast(void*)0);
	}
	void ServerRegisterClientStatGuid(ScriptString StatGuid)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = StatGuid;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9367], params.ptr, cast(void*)0);
	}
	void ClientStartOnlineGame()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9371], cast(void*)0, cast(void*)0);
	}
	void ClientEndOnlineGame()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9376], cast(void*)0, cast(void*)0);
	}
	bool CanViewUserCreatedContent()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9378], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void IncrementNumberOfMatchesPlayed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9383], cast(void*)0, cast(void*)0);
	}
	void SoakPause(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9387], params.ptr, cast(void*)0);
	}
	void ClientTravelToSession(ScriptName SessionName, ScriptClass SearchClass, ubyte PlatformSpecificInfo)
	{
		ubyte params[92];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptClass*)&params[8] = SearchClass;
		params[12] = PlatformSpecificInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9389], params.ptr, cast(void*)0);
	}
	void OnJoinTravelToSessionComplete(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9398], params.ptr, cast(void*)0);
	}
	void ClientReturnToParty(OnlineSubsystem.UniqueNetId RequestingPlayerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = RequestingPlayerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9402], params.ptr, cast(void*)0);
	}
	bool IsSplitscreenPlayer(int* out_SplitscreenPlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = *out_SplitscreenPlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9406], params.ptr, cast(void*)0);
		*out_SplitscreenPlayerIndex = *cast(int*)params.ptr;
		return *cast(bool*)&params[4];
	}
	PlayerReplicationInfo GetSplitscreenPlayerByIndex(int PlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9415], params.ptr, cast(void*)0);
		return *cast(PlayerReplicationInfo*)&params[4];
	}
	int GetSplitscreenPlayerCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9425], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void ClientControlMovieTexture(TextureMovie MovieTexture, SeqAct_ControlMovieTexture.EMovieControlType Mode)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TextureMovie*)params.ptr = MovieTexture;
		*cast(SeqAct_ControlMovieTexture.EMovieControlType*)&params[4] = Mode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9430], params.ptr, cast(void*)0);
	}
	void ClientSetForceMipLevelsToBeResident(MaterialInterface pMaterial, float ForceDuration, int CinematicTextureGroups)
	{
		ubyte params[12];
		params[] = 0;
		*cast(MaterialInterface*)params.ptr = pMaterial;
		*cast(float*)&params[4] = ForceDuration;
		*cast(int*)&params[8] = CinematicTextureGroups;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9433], params.ptr, cast(void*)0);
	}
	void ClientPrestreamTextures(Actor ForcedActor, float ForceDuration, bool bEnableStreaming, int CinematicTextureGroups)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = ForcedActor;
		*cast(float*)&params[4] = ForceDuration;
		*cast(bool*)&params[8] = bEnableStreaming;
		*cast(int*)&params[12] = CinematicTextureGroups;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9437], params.ptr, cast(void*)0);
	}
	bool IsPartyLeader()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9442], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ScriptString GetPartyMapName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9446], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetPartyGameTypeName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9448], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool GetAchievementProgression(int AchievementId, float* CurrentValue, float* MaxValue)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = AchievementId;
		*cast(float*)&params[4] = *CurrentValue;
		*cast(float*)&params[8] = *MaxValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9450], params.ptr, cast(void*)0);
		*CurrentValue = *cast(float*)&params[4];
		*MaxValue = *cast(float*)&params[8];
		return *cast(bool*)&params[12];
	}
	void OnFlyThroughHasEnded(SeqAct_FlyThroughHasEnded inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_FlyThroughHasEnded*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9455], params.ptr, cast(void*)0);
	}
	void Sentinel_SetupForGamebasedTravelTheWorld()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9461], cast(void*)0, cast(void*)0);
	}
	void Sentinel_PreAcquireTravelTheWorldPoints()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9462], cast(void*)0, cast(void*)0);
	}
	void Sentinel_PostAcquireTravelTheWorldPoints()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9463], cast(void*)0, cast(void*)0);
	}
	void InputMatchDelegate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9464], cast(void*)0, cast(void*)0);
	}
	void DoForceFeedbackForScreenShake(CameraShake ShakeData, float ShakeScale)
	{
		ubyte params[8];
		params[] = 0;
		*cast(CameraShake*)params.ptr = ShakeData;
		*cast(float*)&params[4] = ShakeScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9465], params.ptr, cast(void*)0);
	}
	void ClientPlayCameraShake(CameraShake Shake, float Scale, bool bTryForceFeedback, Camera.ECameraAnimPlaySpace PlaySpace, Rotator UserPlaySpaceRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(CameraShake*)params.ptr = Shake;
		*cast(float*)&params[4] = Scale;
		*cast(bool*)&params[8] = bTryForceFeedback;
		*cast(Camera.ECameraAnimPlaySpace*)&params[12] = PlaySpace;
		*cast(Rotator*)&params[16] = UserPlaySpaceRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9468], params.ptr, cast(void*)0);
	}
	void ClientStopCameraShake(CameraShake Shake)
	{
		ubyte params[4];
		params[] = 0;
		*cast(CameraShake*)params.ptr = Shake;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9474], params.ptr, cast(void*)0);
	}
	void OnCameraShake(SeqAct_CameraShake inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_CameraShake*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9476], params.ptr, cast(void*)0);
	}
	void ClientPlayCameraAnim(CameraAnim AnimToPlay, float Scale, float Rate, float BlendInTime, float BlendOutTime, bool bLoop, bool bRandomStartTime, Camera.ECameraAnimPlaySpace Space, Rotator CustomPlaySpace)
	{
		ubyte params[44];
		params[] = 0;
		*cast(CameraAnim*)params.ptr = AnimToPlay;
		*cast(float*)&params[4] = Scale;
		*cast(float*)&params[8] = Rate;
		*cast(float*)&params[12] = BlendInTime;
		*cast(float*)&params[16] = BlendOutTime;
		*cast(bool*)&params[20] = bLoop;
		*cast(bool*)&params[24] = bRandomStartTime;
		*cast(Camera.ECameraAnimPlaySpace*)&params[28] = Space;
		*cast(Rotator*)&params[32] = CustomPlaySpace;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9488], params.ptr, cast(void*)0);
	}
	void ClientStopCameraAnim(CameraAnim AnimToStop)
	{
		ubyte params[4];
		params[] = 0;
		*cast(CameraAnim*)params.ptr = AnimToStop;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9500], params.ptr, cast(void*)0);
	}
	void ClientSpawnCameraLensEffect(ScriptClass LensEffectEmitterClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = LensEffectEmitterClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9502], params.ptr, cast(void*)0);
	}
	void OnSetSoundMode(SeqAct_SetSoundMode Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetSoundMode*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9504], params.ptr, cast(void*)0);
	}
	bool HasPeerConnection(OnlineSubsystem.UniqueNetId* PeerNetId)
	{
		ubyte params[12];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = *PeerNetId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9513], params.ptr, cast(void*)0);
		*PeerNetId = *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
		return *cast(bool*)&params[8];
	}
	void BugItGo(float X, float Y, float Z, int Pitch, int Yaw, int Roll)
	{
		ubyte params[24];
		params[] = 0;
		*cast(float*)params.ptr = X;
		*cast(float*)&params[4] = Y;
		*cast(float*)&params[8] = Z;
		*cast(int*)&params[12] = Pitch;
		*cast(int*)&params[16] = Yaw;
		*cast(int*)&params[20] = Roll;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9516], params.ptr, cast(void*)0);
	}
	void BugItGoString(ScriptString TheLocation, ScriptString TheRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = TheLocation;
		*cast(ScriptString*)&params[12] = TheRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9525], params.ptr, cast(void*)0);
	}
	void BugItWorker(Vector TheLocation, Rotator TheRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = TheLocation;
		*cast(Rotator*)&params[12] = TheRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9528], params.ptr, cast(void*)0);
	}
	void BugIt(ScriptString ScreenShotDescription)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ScreenShotDescription;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9532], params.ptr, cast(void*)0);
	}
	void LogOutBugItGoToLogFile(ScriptString InScreenShotDesc, ScriptString InGoString, ScriptString InLocString)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InScreenShotDesc;
		*cast(ScriptString*)&params[12] = InGoString;
		*cast(ScriptString*)&params[24] = InLocString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9538], params.ptr, cast(void*)0);
	}
	void LogLoc()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9539], cast(void*)0, cast(void*)0);
	}
	void BugItAI(ScriptString ScreenShotDescription)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ScreenShotDescription;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9544], params.ptr, cast(void*)0);
	}
	void LogOutBugItAIGoToLogFile(ScriptString InScreenShotDesc, ScriptString InGoString, ScriptString InLocString)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InScreenShotDesc;
		*cast(ScriptString*)&params[12] = InGoString;
		*cast(ScriptString*)&params[24] = InLocString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9550], params.ptr, cast(void*)0);
	}
	void BugItStringCreator(Vector* ViewLocation, Rotator* ViewRotation, ScriptString* GoString, ScriptString* LocString)
	{
		ubyte params[48];
		params[] = 0;
		*cast(Vector*)params.ptr = *ViewLocation;
		*cast(Rotator*)&params[12] = *ViewRotation;
		*cast(ScriptString*)&params[24] = *GoString;
		*cast(ScriptString*)&params[36] = *LocString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9551], params.ptr, cast(void*)0);
		*ViewLocation = *cast(Vector*)params.ptr;
		*ViewRotation = *cast(Rotator*)&params[12];
		*GoString = *cast(ScriptString*)&params[24];
		*LocString = *cast(ScriptString*)&params[36];
	}
	void OnEngineInitialTick()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9556], cast(void*)0, cast(void*)0);
	}
	void DisableDebugAI()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9557], cast(void*)0, cast(void*)0);
	}
	void ReceivedGameClass(ScriptClass GameClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = GameClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[9564], params.ptr, cast(void*)0);
	}
}
