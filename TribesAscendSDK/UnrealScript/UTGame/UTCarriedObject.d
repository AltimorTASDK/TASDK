module UnrealScript.UTGame.UTCarriedObject;

import ScriptClasses;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTMapInfo;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Texture2D;
import UnrealScript.UDKBase.UDKGameObjective;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.UDKBase.UDKCarriedObject;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.UIRoot;
import UnrealScript.Engine.Canvas;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Engine.SoundCue;
import UnrealScript.UTGame.UTPlayerReplicationInfo;

extern(C++) interface UTCarriedObject : UDKCarriedObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptName GameObjBone3P() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 596); }
			Rotator GameObjRot3P() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 616); }
			Vector GameObjOffset3P() { return *cast(Vector*)(cast(size_t)cast(void*)this + 604); }
			Rotator GameObjRot1P() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 640); }
			Vector GameObjOffset1P() { return *cast(Vector*)(cast(size_t)cast(void*)this + 628); }
			ScriptArray!(Controller) Assists() { return *cast(ScriptArray!(Controller)*)(cast(size_t)cast(void*)this + 560); }
			ScriptArray!(UDKPlayerController.ObjectiveAnnouncementInfo) NeedToPickUpAnnouncements() { return *cast(ScriptArray!(UDKPlayerController.ObjectiveAnnouncementInfo)*)(cast(size_t)cast(void*)this + 680); }
			ForceFeedbackWaveform PickUpWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 764); }
			UObject.LinearColor GoldColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 748); }
			UObject.LinearColor BlueColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 732); }
			UObject.LinearColor RedColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 716); }
			int LastSeeMessageIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 712); }
			float LastFlagSeeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 708); }
			float LastHighlightUpdate() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
			float HighlightSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
			float MaxHighlightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 696); }
			float HighlightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 692); }
			float DefaultHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 676); }
			float DefaultRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 672); }
			Pawn OldHolder() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 664); }
			SoundCue ReturnedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 660); }
			SoundCue DroppedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 656); }
			SoundCue PickupSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 652); }
			Texture2D IconTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 592); }
			UIRoot.TextureCoordinates IconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 576); }
			float MapSize() { return *cast(float*)(cast(size_t)cast(void*)this + 572); }
			Controller FirstTouch() { return *cast(Controller*)(cast(size_t)cast(void*)this + 556); }
			float MaxDropTime() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
			float TakenTime() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
			Pawn Holder() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 544); }
			UTPlayerReplicationInfo HolderPRI() { return *cast(UTPlayerReplicationInfo*)(cast(size_t)cast(void*)this + 540); }
			float TossDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 536); }
		}
		bool bUseTeamColorForIcon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
		bool bUseTeamColorForIcon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
		bool bLeavingDroppedState() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
		bool bLeavingDroppedState(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
		bool bLastSecondSave() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
		bool bLastSecondSave(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
	}
final:
	bool FlagUse(Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36609], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43635], cast(void*)0, cast(void*)0);
	}
	bool ShouldMinimapRenderFor(PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43637], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void HighlightOnMinimap(int Switch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43640], params.ptr, cast(void*)0);
	}
	Texture2D GetIconTexture()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43642], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	void DrawIcon(Canvas pCanvas, Vector IconLocation, float IconWidth, float IconAlpha)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(Vector*)&params[4] = IconLocation;
		*cast(float*)&params[16] = IconWidth;
		*cast(float*)&params[20] = IconAlpha;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43644], params.ptr, cast(void*)0);
	}
	void RenderMapIcon(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43651], params.ptr, cast(void*)0);
	}
	void RenderEnemyMapIcon(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, UTGameObjective NearbyObjective)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(UTGameObjective*)&params[12] = NearbyObjective;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43656], params.ptr, cast(void*)0);
	}
	void SetHolder(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43666], params.ptr, cast(void*)0);
	}
	void SendFlagMessage(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43672], params.ptr, cast(void*)0);
	}
	void Score()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43674], cast(void*)0, cast(void*)0);
	}
	void Drop(Controller Killer, bool bNoThrow)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(bool*)&params[4] = bNoThrow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43675], params.ptr, cast(void*)0);
	}
	void SendHome(Controller Returner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Returner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43679], params.ptr, cast(void*)0);
	}
	void KismetSendHome()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43682], cast(void*)0, cast(void*)0);
	}
	void BroadcastReturnedMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43683], cast(void*)0, cast(void*)0);
	}
	void BroadcastDroppedMessage(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43684], params.ptr, cast(void*)0);
	}
	void BroadcastTakenFromBaseMessage(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43686], params.ptr, cast(void*)0);
	}
	void BroadcastTakenDroppedMessage(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43688], params.ptr, cast(void*)0);
	}
	void CalcSetHome()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43690], cast(void*)0, cast(void*)0);
	}
	void ClearHolder()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43692], cast(void*)0, cast(void*)0);
	}
	Actor Position()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43697], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	bool ValidHolder(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43699], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43705], params.ptr, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43710], params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43712], params.ptr, cast(void*)0);
	}
	void ClientReturnedHome()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43714], cast(void*)0, cast(void*)0);
	}
	void NotReachableBy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43715], params.ptr, cast(void*)0);
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43717], params.ptr, cast(void*)0);
	}
	UDKGameObjective GetKismetEventObjective()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43720], params.ptr, cast(void*)0);
		return *cast(UDKGameObjective*)params.ptr;
	}
	void LogTaken(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43722], params.ptr, cast(void*)0);
	}
	void LogReturned(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43724], params.ptr, cast(void*)0);
	}
	void LogDropped(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43726], params.ptr, cast(void*)0);
	}
	void CheckTouching()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43729], cast(void*)0, cast(void*)0);
	}
	void AutoSendHome()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43733], cast(void*)0, cast(void*)0);
	}
	void CheckFit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43761], cast(void*)0, cast(void*)0);
	}
	void CheckPain()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[43762], cast(void*)0, cast(void*)0);
	}
}
