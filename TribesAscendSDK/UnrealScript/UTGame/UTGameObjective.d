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
	struct ScorerRecord
	{
		public @property final auto ref float Pct() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Pct[4];
		public @property final auto ref UTPlayerReplicationInfo PRI() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)&this + 0); }
		private ubyte __PRI[4];
	}
	public @property final bool bAllowRemoteUse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x2) != 0; }
	public @property final bool bAllowRemoteUse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x2; } return val; }
	public @property final auto ref ScriptArray!(NavigationPoint) VehicleParkingSpots() { return *cast(ScriptArray!(NavigationPoint)*)(cast(size_t)cast(void*)this + 772); }
	public @property final auto ref ScriptArray!(UTGameObjective.ScorerRecord) Scorers() { return *cast(ScriptArray!(UTGameObjective.ScorerRecord)*)(cast(size_t)cast(void*)this + 792); }
	public @property final auto ref ScriptArray!(UTVehicleFactory) VehicleFactories() { return *cast(ScriptArray!(UTVehicleFactory)*)(cast(size_t)cast(void*)this + 904); }
	public @property final auto ref ScriptArray!(PlayerStart) PlayerStarts() { return *cast(ScriptArray!(PlayerStart)*)(cast(size_t)cast(void*)this + 916); }
	public @property final auto ref ScriptArray!(UTTeamStaticMesh) TeamStaticMeshes() { return *cast(ScriptArray!(UTTeamStaticMesh)*)(cast(size_t)cast(void*)this + 928); }
	public @property final auto ref ScriptArray!(SoundNodeWave) LocationSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1000); }
	public @property final auto ref UObject.LinearColor AttackLinearColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 1012); }
	public @property final auto ref float MaxBeaconDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 996); }
	public @property final auto ref float LastPostRenderTraceTime() { return *cast(float*)(cast(size_t)cast(void*)this + 992); }
	public @property final auto ref float LastHighlightUpdate() { return *cast(float*)(cast(size_t)cast(void*)this + 988); }
	public @property final auto ref float MinimapIconScale() { return *cast(float*)(cast(size_t)cast(void*)this + 984); }
	public @property final auto ref float HighlightSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 980); }
	public @property final auto ref float MaxHighlightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 976); }
	public @property final auto ref float HighlightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 972); }
	public @property final auto ref UDKPlayerController.ObjectiveAnnouncementInfo DefendAnnouncement() { return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)(cast(size_t)cast(void*)this + 956); }
	public @property final auto ref UDKPlayerController.ObjectiveAnnouncementInfo AttackAnnouncement() { return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)(cast(size_t)cast(void*)this + 940); }
	public @property final auto ref float CameraViewDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 900); }
	public @property final auto ref float MaxSensorRange() { return *cast(float*)(cast(size_t)cast(void*)this + 896); }
	public @property final auto ref Material HudMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 892); }
	public @property final auto ref float IconExtentY() { return *cast(float*)(cast(size_t)cast(void*)this + 888); }
	public @property final auto ref float IconExtentX() { return *cast(float*)(cast(size_t)cast(void*)this + 884); }
	public @property final auto ref float IconPosY() { return *cast(float*)(cast(size_t)cast(void*)this + 880); }
	public @property final auto ref float IconPosX() { return *cast(float*)(cast(size_t)cast(void*)this + 876); }
	public @property final auto ref UIRoot.TextureCoordinates AttackCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 860); }
	public @property final auto ref UObject.LinearColor ControlColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 812); }
	public @property final auto ref UTGameObjective NextObjective() { return *cast(UTGameObjective*)(cast(size_t)cast(void*)this + 808); }
	public @property final auto ref int Score() { return *cast(int*)(cast(size_t)cast(void*)this + 804); }
	public @property final auto ref float BaseRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 788); }
	public @property final auto ref Volume MyBaseVolume() { return *cast(Volume*)(cast(size_t)cast(void*)this + 784); }
	public @property final auto ref ScriptString ObjectiveName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 760); }
	public @property final auto ref UTDefensePoint DefensePoints() { return *cast(UTDefensePoint*)(cast(size_t)cast(void*)this + 756); }
	public @property final auto ref UTSquadAI DefenseSquad() { return *cast(UTSquadAI*)(cast(size_t)cast(void*)this + 752); }
	public @property final auto ref ubyte DefensePriority() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 749); }
	public @property final auto ref ubyte StartTeam() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 748); }
	public @property final bool bScriptRenderAdditionalMinimap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x200) != 0; }
	public @property final bool bScriptRenderAdditionalMinimap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x200; } return val; }
	public @property final bool bHasLocationSpeech() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x100) != 0; }
	public @property final bool bHasLocationSpeech(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x100; } return val; }
	public @property final bool bPostRenderTraceSucceeded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x80) != 0; }
	public @property final bool bPostRenderTraceSucceeded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x80; } return val; }
	public @property final bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x40) != 0; }
	public @property final bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x40; } return val; }
	public @property final bool bIsDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x20) != 0; }
	public @property final bool bIsDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x20; } return val; }
	public @property final bool bIsConstructing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x10) != 0; }
	public @property final bool bIsConstructing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x10; } return val; }
	public @property final bool bHasSensor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x8) != 0; }
	public @property final bool bHasSensor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x8; } return val; }
	public @property final bool bFirstObjective() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x4) != 0; }
	public @property final bool bFirstObjective(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x4; } return val; }
	public @property final bool bAlreadyRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 744) & 0x1) != 0; }
	public @property final bool bAlreadyRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 744) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 744) &= ~0x1; } return val; }
	final bool UsedBy(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36480], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final Actor GetAutoObjectiveActor(UTPlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36543], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	final UTCarriedObject GetFlag()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42577], params.ptr, cast(void*)0);
		return *cast(UTCarriedObject*)params.ptr;
	}
	final bool Shootable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43024], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44331], cast(void*)0, cast(void*)0);
	}
	final bool IsStandalone()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44338], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final Vector GetHUDOffset(PlayerController PC, Canvas pCanvas)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44340], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	final int GetLocationMessageIndex(UTBot B, Pawn StatusPawn)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = StatusPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44345], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final SoundNodeWave GetLocationSpeechFor(PlayerController PC, int LocationSpeechOffset, int MessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = LocationSpeechOffset;
		*cast(int*)&params[8] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44349], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44355], cast(void*)0, cast(void*)0);
	}
	final void AddTeamStaticMesh(UTTeamStaticMesh SMesh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTTeamStaticMesh*)params.ptr = SMesh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44357], params.ptr, cast(void*)0);
	}
	final void UpdateTeamStaticMeshes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44359], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44361], params.ptr, cast(void*)0);
	}
	final UTGameObjective FindNearestFriendlyNode(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44363], params.ptr, cast(void*)0);
		return *cast(UTGameObjective*)&params[4];
	}
	final bool CalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44367], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	final void HighlightOnMinimap(int Switch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44375], params.ptr, cast(void*)0);
	}
	final void RenderMinimap(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, float ColorPercent)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(float*)&params[12] = ColorPercent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44377], params.ptr, cast(void*)0);
	}
	final void RenderExtraDetails(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, float ColorPercent, bool bSelected)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(float*)&params[12] = ColorPercent;
		*cast(bool*)&params[16] = bSelected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44382], params.ptr, cast(void*)0);
	}
	final void DrawMapSelection(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44388], params.ptr, cast(void*)0);
	}
	final bool IsCritical()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44393], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsNeutral()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44395], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool IsActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44397], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool TellBotHowToHeal(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44399], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool TeamLink(int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44402], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool NeedsHealing()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44405], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool CanDoubleJump(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44407], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool BotNearObjective(AIController C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44410], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool NearObjective(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44414], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44418], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final bool TellBotHowToDisable(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44420], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final int GetNumDefenders()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44425], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool BetterObjectiveThan(UTGameObjective Best, ubyte DesiredTeamNum, ubyte RequesterTeamNum)
	{
		ubyte params[10];
		params[] = 0;
		*cast(UTGameObjective*)params.ptr = Best;
		params[4] = DesiredTeamNum;
		params[5] = RequesterTeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44429], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44434], cast(void*)0, cast(void*)0);
	}
	final void ClientReset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44435], cast(void*)0, cast(void*)0);
	}
	final void AddScorer(UTPlayerReplicationInfo PRI, float Pct)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = PRI;
		*cast(float*)&params[4] = Pct;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44436], params.ptr, cast(void*)0);
	}
	final void ShareScore(int TotalScore, ScriptString EventDesc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = TotalScore;
		*cast(ScriptString*)&params[4] = EventDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44441], params.ptr, cast(void*)0);
	}
	final void SetTeam(ubyte TeamIndex)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44446], params.ptr, cast(void*)0);
	}
	final void FindGoodEndView(PlayerController PC, Rotator* GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Rotator*)&params[4] = *GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44448], params.ptr, cast(void*)0);
		*GoodRotation = *cast(Rotator*)&params[4];
	}
	final bool TeleportTo(UTPawn Traveler)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = Traveler;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44458], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool ValidSpawnPointFor(ubyte TeamIndex)
	{
		ubyte params[5];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44461], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void SetAlarm(bool bNowOn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowOn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44464], params.ptr, cast(void*)0);
	}
	final void TriggerFlagEvent(ScriptName EventType, Controller EventInstigator)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventType;
		*cast(Controller*)&params[8] = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44466], params.ptr, cast(void*)0);
	}
	final void MarkShootSpotsFor(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44472], params.ptr, cast(void*)0);
	}
	final bool ReachedParkingSpot(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44476], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void FlagUpdated(bool bFlagHome)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFlagHome;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44480], params.ptr, cast(void*)0);
	}
	final void OnFlagComesHome()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44482], cast(void*)0, cast(void*)0);
	}
	final void OnFlagTaken()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44483], cast(void*)0, cast(void*)0);
	}
}
