module UnrealScript.UTGame.UTGameObjective;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTGameObjective")); }
	private static __gshared UTGameObjective mDefaultProperties;
	@property final static UTGameObjective DefaultProperties() { mixin(MGDPC("UTGameObjective", "UTGameObjective UTGame.Default__UTGameObjective")); }
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
			ScriptFunction UsedBy() { mixin(MGF("mUsedBy", "Function UTGame.UTGameObjective.UsedBy")); }
			ScriptFunction GetAutoObjectiveActor() { mixin(MGF("mGetAutoObjectiveActor", "Function UTGame.UTGameObjective.GetAutoObjectiveActor")); }
			ScriptFunction GetFlag() { mixin(MGF("mGetFlag", "Function UTGame.UTGameObjective.GetFlag")); }
			ScriptFunction Shootable() { mixin(MGF("mShootable", "Function UTGame.UTGameObjective.Shootable")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function UTGame.UTGameObjective.PostBeginPlay")); }
			ScriptFunction IsStandalone() { mixin(MGF("mIsStandalone", "Function UTGame.UTGameObjective.IsStandalone")); }
			ScriptFunction GetHUDOffset() { mixin(MGF("mGetHUDOffset", "Function UTGame.UTGameObjective.GetHUDOffset")); }
			ScriptFunction GetLocationMessageIndex() { mixin(MGF("mGetLocationMessageIndex", "Function UTGame.UTGameObjective.GetLocationMessageIndex")); }
			ScriptFunction GetLocationSpeechFor() { mixin(MGF("mGetLocationSpeechFor", "Function UTGame.UTGameObjective.GetLocationSpeechFor")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function UTGame.UTGameObjective.Destroyed")); }
			ScriptFunction AddTeamStaticMesh() { mixin(MGF("mAddTeamStaticMesh", "Function UTGame.UTGameObjective.AddTeamStaticMesh")); }
			ScriptFunction UpdateTeamStaticMeshes() { mixin(MGF("mUpdateTeamStaticMeshes", "Function UTGame.UTGameObjective.UpdateTeamStaticMeshes")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function UTGame.UTGameObjective.ReplicatedEvent")); }
			ScriptFunction FindNearestFriendlyNode() { mixin(MGF("mFindNearestFriendlyNode", "Function UTGame.UTGameObjective.FindNearestFriendlyNode")); }
			ScriptFunction CalcCamera() { mixin(MGF("mCalcCamera", "Function UTGame.UTGameObjective.CalcCamera")); }
			ScriptFunction HighlightOnMinimap() { mixin(MGF("mHighlightOnMinimap", "Function UTGame.UTGameObjective.HighlightOnMinimap")); }
			ScriptFunction RenderMinimap() { mixin(MGF("mRenderMinimap", "Function UTGame.UTGameObjective.RenderMinimap")); }
			ScriptFunction RenderExtraDetails() { mixin(MGF("mRenderExtraDetails", "Function UTGame.UTGameObjective.RenderExtraDetails")); }
			ScriptFunction DrawMapSelection() { mixin(MGF("mDrawMapSelection", "Function UTGame.UTGameObjective.DrawMapSelection")); }
			ScriptFunction IsCritical() { mixin(MGF("mIsCritical", "Function UTGame.UTGameObjective.IsCritical")); }
			ScriptFunction IsNeutral() { mixin(MGF("mIsNeutral", "Function UTGame.UTGameObjective.IsNeutral")); }
			ScriptFunction IsActive() { mixin(MGF("mIsActive", "Function UTGame.UTGameObjective.IsActive")); }
			ScriptFunction TellBotHowToHeal() { mixin(MGF("mTellBotHowToHeal", "Function UTGame.UTGameObjective.TellBotHowToHeal")); }
			ScriptFunction TeamLink() { mixin(MGF("mTeamLink", "Function UTGame.UTGameObjective.TeamLink")); }
			ScriptFunction NeedsHealing() { mixin(MGF("mNeedsHealing", "Function UTGame.UTGameObjective.NeedsHealing")); }
			ScriptFunction CanDoubleJump() { mixin(MGF("mCanDoubleJump", "Function UTGame.UTGameObjective.CanDoubleJump")); }
			ScriptFunction BotNearObjective() { mixin(MGF("mBotNearObjective", "Function UTGame.UTGameObjective.BotNearObjective")); }
			ScriptFunction NearObjective() { mixin(MGF("mNearObjective", "Function UTGame.UTGameObjective.NearObjective")); }
			ScriptFunction GetHumanReadableName() { mixin(MGF("mGetHumanReadableName", "Function UTGame.UTGameObjective.GetHumanReadableName")); }
			ScriptFunction TellBotHowToDisable() { mixin(MGF("mTellBotHowToDisable", "Function UTGame.UTGameObjective.TellBotHowToDisable")); }
			ScriptFunction GetNumDefenders() { mixin(MGF("mGetNumDefenders", "Function UTGame.UTGameObjective.GetNumDefenders")); }
			ScriptFunction BetterObjectiveThan() { mixin(MGF("mBetterObjectiveThan", "Function UTGame.UTGameObjective.BetterObjectiveThan")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function UTGame.UTGameObjective.Reset")); }
			ScriptFunction ClientReset() { mixin(MGF("mClientReset", "Function UTGame.UTGameObjective.ClientReset")); }
			ScriptFunction AddScorer() { mixin(MGF("mAddScorer", "Function UTGame.UTGameObjective.AddScorer")); }
			ScriptFunction ShareScore() { mixin(MGF("mShareScore", "Function UTGame.UTGameObjective.ShareScore")); }
			ScriptFunction SetTeam() { mixin(MGF("mSetTeam", "Function UTGame.UTGameObjective.SetTeam")); }
			ScriptFunction FindGoodEndView() { mixin(MGF("mFindGoodEndView", "Function UTGame.UTGameObjective.FindGoodEndView")); }
			ScriptFunction TeleportTo() { mixin(MGF("mTeleportTo", "Function UTGame.UTGameObjective.TeleportTo")); }
			ScriptFunction ValidSpawnPointFor() { mixin(MGF("mValidSpawnPointFor", "Function UTGame.UTGameObjective.ValidSpawnPointFor")); }
			ScriptFunction SetAlarm() { mixin(MGF("mSetAlarm", "Function UTGame.UTGameObjective.SetAlarm")); }
			ScriptFunction TriggerFlagEvent() { mixin(MGF("mTriggerFlagEvent", "Function UTGame.UTGameObjective.TriggerFlagEvent")); }
			ScriptFunction MarkShootSpotsFor() { mixin(MGF("mMarkShootSpotsFor", "Function UTGame.UTGameObjective.MarkShootSpotsFor")); }
			ScriptFunction ReachedParkingSpot() { mixin(MGF("mReachedParkingSpot", "Function UTGame.UTGameObjective.ReachedParkingSpot")); }
			ScriptFunction FlagUpdated() { mixin(MGF("mFlagUpdated", "Function UTGame.UTGameObjective.FlagUpdated")); }
			ScriptFunction OnFlagComesHome() { mixin(MGF("mOnFlagComesHome", "Function UTGame.UTGameObjective.OnFlagComesHome")); }
			ScriptFunction OnFlagTaken() { mixin(MGF("mOnFlagTaken", "Function UTGame.UTGameObjective.OnFlagTaken")); }
		}
	}
	struct ScorerRecord
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.UTGameObjective.ScorerRecord")); }
		@property final auto ref
		{
			float Pct() { mixin(MGPS("float", 4)); }
			UTPlayerReplicationInfo PRI() { mixin(MGPS("UTPlayerReplicationInfo", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(NavigationPoint) VehicleParkingSpots() { mixin(MGPC("ScriptArray!(NavigationPoint)", 772)); }
			ScriptArray!(UTGameObjective.ScorerRecord) Scorers() { mixin(MGPC("ScriptArray!(UTGameObjective.ScorerRecord)", 792)); }
			ScriptArray!(UTVehicleFactory) VehicleFactories() { mixin(MGPC("ScriptArray!(UTVehicleFactory)", 904)); }
			ScriptArray!(PlayerStart) PlayerStarts() { mixin(MGPC("ScriptArray!(PlayerStart)", 916)); }
			ScriptArray!(UTTeamStaticMesh) TeamStaticMeshes() { mixin(MGPC("ScriptArray!(UTTeamStaticMesh)", 928)); }
			ScriptArray!(SoundNodeWave) LocationSpeech() { mixin(MGPC("ScriptArray!(SoundNodeWave)", 1000)); }
			UObject.LinearColor AttackLinearColor() { mixin(MGPC("UObject.LinearColor", 1012)); }
			float MaxBeaconDistance() { mixin(MGPC("float", 996)); }
			float LastPostRenderTraceTime() { mixin(MGPC("float", 992)); }
			float LastHighlightUpdate() { mixin(MGPC("float", 988)); }
			float MinimapIconScale() { mixin(MGPC("float", 984)); }
			float HighlightSpeed() { mixin(MGPC("float", 980)); }
			float MaxHighlightScale() { mixin(MGPC("float", 976)); }
			float HighlightScale() { mixin(MGPC("float", 972)); }
			UDKPlayerController.ObjectiveAnnouncementInfo DefendAnnouncement() { mixin(MGPC("UDKPlayerController.ObjectiveAnnouncementInfo", 956)); }
			UDKPlayerController.ObjectiveAnnouncementInfo AttackAnnouncement() { mixin(MGPC("UDKPlayerController.ObjectiveAnnouncementInfo", 940)); }
			float CameraViewDistance() { mixin(MGPC("float", 900)); }
			float MaxSensorRange() { mixin(MGPC("float", 896)); }
			Material HudMaterial() { mixin(MGPC("Material", 892)); }
			float IconExtentY() { mixin(MGPC("float", 888)); }
			float IconExtentX() { mixin(MGPC("float", 884)); }
			float IconPosY() { mixin(MGPC("float", 880)); }
			float IconPosX() { mixin(MGPC("float", 876)); }
			UIRoot.TextureCoordinates AttackCoords() { mixin(MGPC("UIRoot.TextureCoordinates", 860)); }
			UObject.LinearColor ControlColor() { mixin(MGPC("UObject.LinearColor", 812)); }
			UTGameObjective NextObjective() { mixin(MGPC("UTGameObjective", 808)); }
			int Score() { mixin(MGPC("int", 804)); }
			float BaseRadius() { mixin(MGPC("float", 788)); }
			Volume MyBaseVolume() { mixin(MGPC("Volume", 784)); }
			ScriptString ObjectiveName() { mixin(MGPC("ScriptString", 760)); }
			UTDefensePoint DefensePoints() { mixin(MGPC("UTDefensePoint", 756)); }
			UTSquadAI DefenseSquad() { mixin(MGPC("UTSquadAI", 752)); }
			ubyte DefensePriority() { mixin(MGPC("ubyte", 749)); }
			ubyte StartTeam() { mixin(MGPC("ubyte", 748)); }
		}
		bool bAllowRemoteUse() { mixin(MGBPC(744, 0x2)); }
		bool bAllowRemoteUse(bool val) { mixin(MSBPC(744, 0x2)); }
		bool bScriptRenderAdditionalMinimap() { mixin(MGBPC(744, 0x200)); }
		bool bScriptRenderAdditionalMinimap(bool val) { mixin(MSBPC(744, 0x200)); }
		bool bHasLocationSpeech() { mixin(MGBPC(744, 0x100)); }
		bool bHasLocationSpeech(bool val) { mixin(MSBPC(744, 0x100)); }
		bool bPostRenderTraceSucceeded() { mixin(MGBPC(744, 0x80)); }
		bool bPostRenderTraceSucceeded(bool val) { mixin(MSBPC(744, 0x80)); }
		bool bIsActive() { mixin(MGBPC(744, 0x40)); }
		bool bIsActive(bool val) { mixin(MSBPC(744, 0x40)); }
		bool bIsDisabled() { mixin(MGBPC(744, 0x20)); }
		bool bIsDisabled(bool val) { mixin(MSBPC(744, 0x20)); }
		bool bIsConstructing() { mixin(MGBPC(744, 0x10)); }
		bool bIsConstructing(bool val) { mixin(MSBPC(744, 0x10)); }
		bool bHasSensor() { mixin(MGBPC(744, 0x8)); }
		bool bHasSensor(bool val) { mixin(MSBPC(744, 0x8)); }
		bool bFirstObjective() { mixin(MGBPC(744, 0x4)); }
		bool bFirstObjective(bool val) { mixin(MSBPC(744, 0x4)); }
		bool bAlreadyRendered() { mixin(MGBPC(744, 0x1)); }
		bool bAlreadyRendered(bool val) { mixin(MSBPC(744, 0x1)); }
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
	bool CalcCamera(float fDeltaTime, ref Vector out_CamLoc, ref Rotator out_CamRot, ref float out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = out_CamLoc;
		*cast(Rotator*)&params[16] = out_CamRot;
		*cast(float*)&params[28] = out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcCamera, params.ptr, cast(void*)0);
		out_CamLoc = *cast(Vector*)&params[4];
		out_CamRot = *cast(Rotator*)&params[16];
		out_FOV = *cast(float*)&params[28];
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
	void FindGoodEndView(PlayerController PC, ref Rotator GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Rotator*)&params[4] = GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindGoodEndView, params.ptr, cast(void*)0);
		GoodRotation = *cast(Rotator*)&params[4];
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
