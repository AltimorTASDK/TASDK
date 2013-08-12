module UnrealScript.UTGame.UTGameObjective;

import ScriptClasses;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTDefensePoint;
import UnrealScript.UTGame.UTMapInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerStart;
import UnrealScript.UTGame.UTTeamStaticMesh;
import UnrealScript.Engine.Material;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.UDKBase.UDKGameObjective;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.UTGame.UTBot;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Volume;
import UnrealScript.Engine.AIController;
import UnrealScript.UTGame.UTSquadAI;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.Canvas;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.UTGame.UTVehicleFactory;
import UnrealScript.UTGame.UTPlayerReplicationInfo;

extern(C++) interface UTGameObjective : UDKGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGameObjective")); }
	private static __gshared UTGameObjective mDefaultProperties;
	@property final static UTGameObjective DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTGameObjective)("UTGameObjective UTGame.Default__UTGameObjective")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUsedBy;
			ScriptFunction mGetAutoObjectiveActor;
			ScriptFunction mGetFlag;
			ScriptFunction mShootable;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mIsStandalone;
			ScriptFunction mGetHUDOffset;
			ScriptFunction mGetLocationMessageIndex;
			ScriptFunction mGetLocationSpeechFor;
			ScriptFunction mDestroyed;
			ScriptFunction mAddTeamStaticMesh;
			ScriptFunction mUpdateTeamStaticMeshes;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mFindNearestFriendlyNode;
			ScriptFunction mCalcCamera;
			ScriptFunction mHighlightOnMinimap;
			ScriptFunction mRenderMinimap;
			ScriptFunction mRenderExtraDetails;
			ScriptFunction mDrawMapSelection;
			ScriptFunction mIsCritical;
			ScriptFunction mIsNeutral;
			ScriptFunction mIsActive;
			ScriptFunction mTellBotHowToHeal;
			ScriptFunction mTeamLink;
			ScriptFunction mNeedsHealing;
			ScriptFunction mCanDoubleJump;
			ScriptFunction mBotNearObjective;
			ScriptFunction mNearObjective;
			ScriptFunction mGetHumanReadableName;
			ScriptFunction mTellBotHowToDisable;
			ScriptFunction mGetNumDefenders;
			ScriptFunction mBetterObjectiveThan;
			ScriptFunction mReset;
			ScriptFunction mClientReset;
			ScriptFunction mAddScorer;
			ScriptFunction mShareScore;
			ScriptFunction mSetTeam;
			ScriptFunction mFindGoodEndView;
			ScriptFunction mTeleportTo;
			ScriptFunction mValidSpawnPointFor;
			ScriptFunction mSetAlarm;
			ScriptFunction mTriggerFlagEvent;
			ScriptFunction mMarkShootSpotsFor;
			ScriptFunction mReachedParkingSpot;
			ScriptFunction mFlagUpdated;
			ScriptFunction mOnFlagComesHome;
			ScriptFunction mOnFlagTaken;
		}
		public @property static final
		{
			ScriptFunction UsedBy() { return mUsedBy ? mUsedBy : (mUsedBy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.UsedBy")); }
			ScriptFunction GetAutoObjectiveActor() { return mGetAutoObjectiveActor ? mGetAutoObjectiveActor : (mGetAutoObjectiveActor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.GetAutoObjectiveActor")); }
			ScriptFunction GetFlag() { return mGetFlag ? mGetFlag : (mGetFlag = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.GetFlag")); }
			ScriptFunction Shootable() { return mShootable ? mShootable : (mShootable = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.Shootable")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.PostBeginPlay")); }
			ScriptFunction IsStandalone() { return mIsStandalone ? mIsStandalone : (mIsStandalone = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.IsStandalone")); }
			ScriptFunction GetHUDOffset() { return mGetHUDOffset ? mGetHUDOffset : (mGetHUDOffset = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.GetHUDOffset")); }
			ScriptFunction GetLocationMessageIndex() { return mGetLocationMessageIndex ? mGetLocationMessageIndex : (mGetLocationMessageIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.GetLocationMessageIndex")); }
			ScriptFunction GetLocationSpeechFor() { return mGetLocationSpeechFor ? mGetLocationSpeechFor : (mGetLocationSpeechFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.GetLocationSpeechFor")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.Destroyed")); }
			ScriptFunction AddTeamStaticMesh() { return mAddTeamStaticMesh ? mAddTeamStaticMesh : (mAddTeamStaticMesh = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.AddTeamStaticMesh")); }
			ScriptFunction UpdateTeamStaticMeshes() { return mUpdateTeamStaticMeshes ? mUpdateTeamStaticMeshes : (mUpdateTeamStaticMeshes = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.UpdateTeamStaticMeshes")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.ReplicatedEvent")); }
			ScriptFunction FindNearestFriendlyNode() { return mFindNearestFriendlyNode ? mFindNearestFriendlyNode : (mFindNearestFriendlyNode = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.FindNearestFriendlyNode")); }
			ScriptFunction CalcCamera() { return mCalcCamera ? mCalcCamera : (mCalcCamera = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.CalcCamera")); }
			ScriptFunction HighlightOnMinimap() { return mHighlightOnMinimap ? mHighlightOnMinimap : (mHighlightOnMinimap = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.HighlightOnMinimap")); }
			ScriptFunction RenderMinimap() { return mRenderMinimap ? mRenderMinimap : (mRenderMinimap = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.RenderMinimap")); }
			ScriptFunction RenderExtraDetails() { return mRenderExtraDetails ? mRenderExtraDetails : (mRenderExtraDetails = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.RenderExtraDetails")); }
			ScriptFunction DrawMapSelection() { return mDrawMapSelection ? mDrawMapSelection : (mDrawMapSelection = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.DrawMapSelection")); }
			ScriptFunction IsCritical() { return mIsCritical ? mIsCritical : (mIsCritical = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.IsCritical")); }
			ScriptFunction IsNeutral() { return mIsNeutral ? mIsNeutral : (mIsNeutral = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.IsNeutral")); }
			ScriptFunction IsActive() { return mIsActive ? mIsActive : (mIsActive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.IsActive")); }
			ScriptFunction TellBotHowToHeal() { return mTellBotHowToHeal ? mTellBotHowToHeal : (mTellBotHowToHeal = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.TellBotHowToHeal")); }
			ScriptFunction TeamLink() { return mTeamLink ? mTeamLink : (mTeamLink = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.TeamLink")); }
			ScriptFunction NeedsHealing() { return mNeedsHealing ? mNeedsHealing : (mNeedsHealing = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.NeedsHealing")); }
			ScriptFunction CanDoubleJump() { return mCanDoubleJump ? mCanDoubleJump : (mCanDoubleJump = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.CanDoubleJump")); }
			ScriptFunction BotNearObjective() { return mBotNearObjective ? mBotNearObjective : (mBotNearObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.BotNearObjective")); }
			ScriptFunction NearObjective() { return mNearObjective ? mNearObjective : (mNearObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.NearObjective")); }
			ScriptFunction GetHumanReadableName() { return mGetHumanReadableName ? mGetHumanReadableName : (mGetHumanReadableName = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.GetHumanReadableName")); }
			ScriptFunction TellBotHowToDisable() { return mTellBotHowToDisable ? mTellBotHowToDisable : (mTellBotHowToDisable = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.TellBotHowToDisable")); }
			ScriptFunction GetNumDefenders() { return mGetNumDefenders ? mGetNumDefenders : (mGetNumDefenders = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.GetNumDefenders")); }
			ScriptFunction BetterObjectiveThan() { return mBetterObjectiveThan ? mBetterObjectiveThan : (mBetterObjectiveThan = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.BetterObjectiveThan")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.Reset")); }
			ScriptFunction ClientReset() { return mClientReset ? mClientReset : (mClientReset = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.ClientReset")); }
			ScriptFunction AddScorer() { return mAddScorer ? mAddScorer : (mAddScorer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.AddScorer")); }
			ScriptFunction ShareScore() { return mShareScore ? mShareScore : (mShareScore = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.ShareScore")); }
			ScriptFunction SetTeam() { return mSetTeam ? mSetTeam : (mSetTeam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.SetTeam")); }
			ScriptFunction FindGoodEndView() { return mFindGoodEndView ? mFindGoodEndView : (mFindGoodEndView = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.FindGoodEndView")); }
			ScriptFunction TeleportTo() { return mTeleportTo ? mTeleportTo : (mTeleportTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.TeleportTo")); }
			ScriptFunction ValidSpawnPointFor() { return mValidSpawnPointFor ? mValidSpawnPointFor : (mValidSpawnPointFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.ValidSpawnPointFor")); }
			ScriptFunction SetAlarm() { return mSetAlarm ? mSetAlarm : (mSetAlarm = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.SetAlarm")); }
			ScriptFunction TriggerFlagEvent() { return mTriggerFlagEvent ? mTriggerFlagEvent : (mTriggerFlagEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.TriggerFlagEvent")); }
			ScriptFunction MarkShootSpotsFor() { return mMarkShootSpotsFor ? mMarkShootSpotsFor : (mMarkShootSpotsFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.MarkShootSpotsFor")); }
			ScriptFunction ReachedParkingSpot() { return mReachedParkingSpot ? mReachedParkingSpot : (mReachedParkingSpot = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.ReachedParkingSpot")); }
			ScriptFunction FlagUpdated() { return mFlagUpdated ? mFlagUpdated : (mFlagUpdated = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.FlagUpdated")); }
			ScriptFunction OnFlagComesHome() { return mOnFlagComesHome ? mOnFlagComesHome : (mOnFlagComesHome = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.OnFlagComesHome")); }
			ScriptFunction OnFlagTaken() { return mOnFlagTaken ? mOnFlagTaken : (mOnFlagTaken = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameObjective.OnFlagTaken")); }
		}
	}
	struct ScorerRecord
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTGameObjective.ScorerRecord")); }
		@property final auto ref
		{
			float Pct() { return *cast(float*)(cast(size_t)&this + 4); }
			UTPlayerReplicationInfo PRI() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(NavigationPoint) VehicleParkingSpots() { return *cast(ScriptArray!(NavigationPoint)*)(cast(size_t)cast(void*)this + 772); }
			ScriptArray!(UTGameObjective.ScorerRecord) Scorers() { return *cast(ScriptArray!(UTGameObjective.ScorerRecord)*)(cast(size_t)cast(void*)this + 792); }
			ScriptArray!(UTVehicleFactory) VehicleFactories() { return *cast(ScriptArray!(UTVehicleFactory)*)(cast(size_t)cast(void*)this + 904); }
			ScriptArray!(PlayerStart) PlayerStarts() { return *cast(ScriptArray!(PlayerStart)*)(cast(size_t)cast(void*)this + 916); }
			ScriptArray!(UTTeamStaticMesh) TeamStaticMeshes() { return *cast(ScriptArray!(UTTeamStaticMesh)*)(cast(size_t)cast(void*)this + 928); }
			ScriptArray!(SoundNodeWave) LocationSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1000); }
			UObject.LinearColor AttackLinearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1012); }
			float MaxBeaconDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 996); }
			float LastPostRenderTraceTime() { return *cast(float*)(cast(size_t)cast(void*)this + 992); }
			float LastHighlightUpdate() { return *cast(float*)(cast(size_t)cast(void*)this + 988); }
			float MinimapIconScale() { return *cast(float*)(cast(size_t)cast(void*)this + 984); }
			float HighlightSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 980); }
			float MaxHighlightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 976); }
			float HighlightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 972); }
			UDKPlayerController.ObjectiveAnnouncementInfo DefendAnnouncement() { return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)(cast(size_t)cast(void*)this + 956); }
			UDKPlayerController.ObjectiveAnnouncementInfo AttackAnnouncement() { return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)(cast(size_t)cast(void*)this + 940); }
			float CameraViewDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 900); }
			float MaxSensorRange() { return *cast(float*)(cast(size_t)cast(void*)this + 896); }
			Material HudMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 892); }
			float IconExtentY() { return *cast(float*)(cast(size_t)cast(void*)this + 888); }
			float IconExtentX() { return *cast(float*)(cast(size_t)cast(void*)this + 884); }
			float IconPosY() { return *cast(float*)(cast(size_t)cast(void*)this + 880); }
			float IconPosX() { return *cast(float*)(cast(size_t)cast(void*)this + 876); }
			UIRoot.TextureCoordinates AttackCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 860); }
			UObject.LinearColor ControlColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 812); }
			UTGameObjective NextObjective() { return *cast(UTGameObjective*)(cast(size_t)cast(void*)this + 808); }
			int Score() { return *cast(int*)(cast(size_t)cast(void*)this + 804); }
			float BaseRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 788); }
			Volume MyBaseVolume() { return *cast(Volume*)(cast(size_t)cast(void*)this + 784); }
			ScriptString ObjectiveName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 760); }
			UTDefensePoint DefensePoints() { return *cast(UTDefensePoint*)(cast(size_t)cast(void*)this + 756); }
			UTSquadAI DefenseSquad() { return *cast(UTSquadAI*)(cast(size_t)cast(void*)this + 752); }
			ubyte DefensePriority() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 749); }
			ubyte StartTeam() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 748); }
		}
		bool bAllowRemoteUse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x2) != 0; }
		bool bAllowRemoteUse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x2; } return val; }
		bool bScriptRenderAdditionalMinimap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x200) != 0; }
		bool bScriptRenderAdditionalMinimap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x200; } return val; }
		bool bHasLocationSpeech() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x100) != 0; }
		bool bHasLocationSpeech(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x100; } return val; }
		bool bPostRenderTraceSucceeded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x80) != 0; }
		bool bPostRenderTraceSucceeded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x80; } return val; }
		bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x40) != 0; }
		bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x40; } return val; }
		bool bIsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x20) != 0; }
		bool bIsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x20; } return val; }
		bool bIsConstructing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x10) != 0; }
		bool bIsConstructing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x10; } return val; }
		bool bHasSensor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x8) != 0; }
		bool bHasSensor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x8; } return val; }
		bool bFirstObjective() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x4) != 0; }
		bool bFirstObjective(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x4; } return val; }
		bool bAlreadyRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x1) != 0; }
		bool bAlreadyRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x1; } return val; }
	}
final:
	bool UsedBy(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.UsedBy, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Actor GetAutoObjectiveActor(UTPlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAutoObjectiveActor, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	UTCarriedObject GetFlag()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFlag, params.ptr, cast(void*)0);
		return *cast(UTCarriedObject*)params.ptr;
	}
	bool Shootable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Shootable, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	bool IsStandalone()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsStandalone, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Vector GetHUDOffset(PlayerController PC, Canvas pCanvas)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHUDOffset, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	int GetLocationMessageIndex(UTBot B, Pawn StatusPawn)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = StatusPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocationMessageIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	SoundNodeWave GetLocationSpeechFor(PlayerController PC, int LocationSpeechOffset, int MessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = LocationSpeechOffset;
		*cast(int*)&params[8] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocationSpeechFor, params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void AddTeamStaticMesh(UTTeamStaticMesh SMesh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTTeamStaticMesh*)params.ptr = SMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddTeamStaticMesh, params.ptr, cast(void*)0);
	}
	void UpdateTeamStaticMeshes()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateTeamStaticMeshes, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	UTGameObjective FindNearestFriendlyNode(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindNearestFriendlyNode, params.ptr, cast(void*)0);
		return *cast(UTGameObjective*)&params[4];
	}
	bool CalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcCamera, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	void HighlightOnMinimap(int Switch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		(cast(ScriptObject)this).ProcessEvent(Functions.HighlightOnMinimap, params.ptr, cast(void*)0);
	}
	void RenderMinimap(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, float ColorPercent)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(float*)&params[12] = ColorPercent;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderMinimap, params.ptr, cast(void*)0);
	}
	void RenderExtraDetails(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, float ColorPercent, bool bSelected)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(float*)&params[12] = ColorPercent;
		*cast(bool*)&params[16] = bSelected;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderExtraDetails, params.ptr, cast(void*)0);
	}
	void DrawMapSelection(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawMapSelection, params.ptr, cast(void*)0);
	}
	bool IsCritical()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsCritical, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsNeutral()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsNeutral, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsActive, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool TellBotHowToHeal(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.TellBotHowToHeal, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool TeamLink(int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeamLink, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NeedsHealing()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedsHealing, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanDoubleJump(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanDoubleJump, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool BotNearObjective(AIController C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotNearObjective, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NearObjective(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.NearObjective, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHumanReadableName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool TellBotHowToDisable(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.TellBotHowToDisable, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int GetNumDefenders()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNumDefenders, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool BetterObjectiveThan(UTGameObjective Best, ubyte DesiredTeamNum, ubyte RequesterTeamNum)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTGameObjective*)params.ptr = Best;
		params[4] = DesiredTeamNum;
		params[5] = RequesterTeamNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.BetterObjectiveThan, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void ClientReset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReset, cast(void*)0, cast(void*)0);
	}
	void AddScorer(UTPlayerReplicationInfo PRI, float Pct)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = PRI;
		*cast(float*)&params[4] = Pct;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddScorer, params.ptr, cast(void*)0);
	}
	void ShareScore(int TotalScore, ScriptString EventDesc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = TotalScore;
		*cast(ScriptString*)&params[4] = EventDesc;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShareScore, params.ptr, cast(void*)0);
	}
	void SetTeam(ubyte TeamIndex)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeam, params.ptr, cast(void*)0);
	}
	void FindGoodEndView(PlayerController PC, Rotator* GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Rotator*)&params[4] = *GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindGoodEndView, params.ptr, cast(void*)0);
		*GoodRotation = *cast(Rotator*)&params[4];
	}
	bool TeleportTo(UTPawn Traveler)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = Traveler;
		(cast(ScriptObject)this).ProcessEvent(Functions.TeleportTo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ValidSpawnPointFor(ubyte TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ValidSpawnPointFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetAlarm(bool bNowOn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowOn;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAlarm, params.ptr, cast(void*)0);
	}
	void TriggerFlagEvent(ScriptName EventType, Controller EventInstigator)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventType;
		*cast(Controller*)&params[8] = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.TriggerFlagEvent, params.ptr, cast(void*)0);
	}
	void MarkShootSpotsFor(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.MarkShootSpotsFor, params.ptr, cast(void*)0);
	}
	bool ReachedParkingSpot(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReachedParkingSpot, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void FlagUpdated(bool bFlagHome)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFlagHome;
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagUpdated, params.ptr, cast(void*)0);
	}
	void OnFlagComesHome()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFlagComesHome, cast(void*)0, cast(void*)0);
	}
	void OnFlagTaken()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFlagTaken, cast(void*)0, cast(void*)0);
	}
}
