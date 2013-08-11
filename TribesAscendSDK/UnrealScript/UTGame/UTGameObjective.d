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
	struct ScorerRecord
	{
		private ubyte __buffer__[8];
	public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36480], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	Actor GetAutoObjectiveActor(UTPlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36543], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	UTCarriedObject GetFlag()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42577], params.ptr, cast(void*)0);
		return *cast(UTCarriedObject*)params.ptr;
	}
	bool Shootable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43024], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44331], cast(void*)0, cast(void*)0);
	}
	bool IsStandalone()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44338], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Vector GetHUDOffset(PlayerController PC, Canvas pCanvas)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44340], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
	int GetLocationMessageIndex(UTBot B, Pawn StatusPawn)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = StatusPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44345], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	SoundNodeWave GetLocationSpeechFor(PlayerController PC, int LocationSpeechOffset, int MessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = LocationSpeechOffset;
		*cast(int*)&params[8] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44349], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44355], cast(void*)0, cast(void*)0);
	}
	void AddTeamStaticMesh(UTTeamStaticMesh SMesh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTTeamStaticMesh*)params.ptr = SMesh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44357], params.ptr, cast(void*)0);
	}
	void UpdateTeamStaticMeshes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44359], cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44361], params.ptr, cast(void*)0);
	}
	UTGameObjective FindNearestFriendlyNode(int TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44363], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44367], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44375], params.ptr, cast(void*)0);
	}
	void RenderMinimap(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, float ColorPercent)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(float*)&params[12] = ColorPercent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44377], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44382], params.ptr, cast(void*)0);
	}
	void DrawMapSelection(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44388], params.ptr, cast(void*)0);
	}
	bool IsCritical()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44393], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsNeutral()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44395], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44397], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool TellBotHowToHeal(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44399], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool TeamLink(int TeamNum)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = TeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44402], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NeedsHealing()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44405], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool CanDoubleJump(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44407], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool BotNearObjective(AIController C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(AIController*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44410], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool NearObjective(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44414], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44418], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool TellBotHowToDisable(UTBot B)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44420], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int GetNumDefenders()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44425], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool BetterObjectiveThan(UTGameObjective Best, ubyte DesiredTeamNum, ubyte RequesterTeamNum)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTGameObjective*)params.ptr = Best;
		params[4] = DesiredTeamNum;
		params[5] = RequesterTeamNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44429], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44434], cast(void*)0, cast(void*)0);
	}
	void ClientReset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44435], cast(void*)0, cast(void*)0);
	}
	void AddScorer(UTPlayerReplicationInfo PRI, float Pct)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = PRI;
		*cast(float*)&params[4] = Pct;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44436], params.ptr, cast(void*)0);
	}
	void ShareScore(int TotalScore, ScriptString EventDesc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = TotalScore;
		*cast(ScriptString*)&params[4] = EventDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44441], params.ptr, cast(void*)0);
	}
	void SetTeam(ubyte TeamIndex)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44446], params.ptr, cast(void*)0);
	}
	void FindGoodEndView(PlayerController PC, Rotator* GoodRotation)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Rotator*)&params[4] = *GoodRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44448], params.ptr, cast(void*)0);
		*GoodRotation = *cast(Rotator*)&params[4];
	}
	bool TeleportTo(UTPawn Traveler)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = Traveler;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44458], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ValidSpawnPointFor(ubyte TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44461], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetAlarm(bool bNowOn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowOn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44464], params.ptr, cast(void*)0);
	}
	void TriggerFlagEvent(ScriptName EventType, Controller EventInstigator)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventType;
		*cast(Controller*)&params[8] = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44466], params.ptr, cast(void*)0);
	}
	void MarkShootSpotsFor(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44472], params.ptr, cast(void*)0);
	}
	bool ReachedParkingSpot(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44476], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void FlagUpdated(bool bFlagHome)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bFlagHome;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44480], params.ptr, cast(void*)0);
	}
	void OnFlagComesHome()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44482], cast(void*)0, cast(void*)0);
	}
	void OnFlagTaken()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44483], cast(void*)0, cast(void*)0);
	}
}
