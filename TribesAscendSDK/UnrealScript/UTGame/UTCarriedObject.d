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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTCarriedObject")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFlagUse;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mShouldMinimapRenderFor;
			ScriptFunction mHighlightOnMinimap;
			ScriptFunction mGetIconTexture;
			ScriptFunction mDrawIcon;
			ScriptFunction mRenderMapIcon;
			ScriptFunction mRenderEnemyMapIcon;
			ScriptFunction mSetHolder;
			ScriptFunction mSendFlagMessage;
			ScriptFunction mScore;
			ScriptFunction mDrop;
			ScriptFunction mSendHome;
			ScriptFunction mKismetSendHome;
			ScriptFunction mBroadcastReturnedMessage;
			ScriptFunction mBroadcastDroppedMessage;
			ScriptFunction mBroadcastTakenFromBaseMessage;
			ScriptFunction mBroadcastTakenDroppedMessage;
			ScriptFunction mCalcSetHome;
			ScriptFunction mClearHolder;
			ScriptFunction mPosition;
			ScriptFunction mValidHolder;
			ScriptFunction mTouch;
			ScriptFunction mFellOutOfWorld;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mClientReturnedHome;
			ScriptFunction mNotReachableBy;
			ScriptFunction mLanded;
			ScriptFunction mGetKismetEventObjective;
			ScriptFunction mLogTaken;
			ScriptFunction mLogReturned;
			ScriptFunction mLogDropped;
			ScriptFunction mCheckTouching;
			ScriptFunction mAutoSendHome;
			ScriptFunction mCheckFit;
			ScriptFunction mCheckPain;
		}
		public @property static final
		{
			ScriptFunction FlagUse() { return mFlagUse ? mFlagUse : (mFlagUse = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.FlagUse")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.PostBeginPlay")); }
			ScriptFunction ShouldMinimapRenderFor() { return mShouldMinimapRenderFor ? mShouldMinimapRenderFor : (mShouldMinimapRenderFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.ShouldMinimapRenderFor")); }
			ScriptFunction HighlightOnMinimap() { return mHighlightOnMinimap ? mHighlightOnMinimap : (mHighlightOnMinimap = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.HighlightOnMinimap")); }
			ScriptFunction GetIconTexture() { return mGetIconTexture ? mGetIconTexture : (mGetIconTexture = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.GetIconTexture")); }
			ScriptFunction DrawIcon() { return mDrawIcon ? mDrawIcon : (mDrawIcon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.DrawIcon")); }
			ScriptFunction RenderMapIcon() { return mRenderMapIcon ? mRenderMapIcon : (mRenderMapIcon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.RenderMapIcon")); }
			ScriptFunction RenderEnemyMapIcon() { return mRenderEnemyMapIcon ? mRenderEnemyMapIcon : (mRenderEnemyMapIcon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.RenderEnemyMapIcon")); }
			ScriptFunction SetHolder() { return mSetHolder ? mSetHolder : (mSetHolder = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.SetHolder")); }
			ScriptFunction SendFlagMessage() { return mSendFlagMessage ? mSendFlagMessage : (mSendFlagMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.SendFlagMessage")); }
			ScriptFunction Score() { return mScore ? mScore : (mScore = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.Score")); }
			ScriptFunction Drop() { return mDrop ? mDrop : (mDrop = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.Drop")); }
			ScriptFunction SendHome() { return mSendHome ? mSendHome : (mSendHome = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.SendHome")); }
			ScriptFunction KismetSendHome() { return mKismetSendHome ? mKismetSendHome : (mKismetSendHome = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.KismetSendHome")); }
			ScriptFunction BroadcastReturnedMessage() { return mBroadcastReturnedMessage ? mBroadcastReturnedMessage : (mBroadcastReturnedMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.BroadcastReturnedMessage")); }
			ScriptFunction BroadcastDroppedMessage() { return mBroadcastDroppedMessage ? mBroadcastDroppedMessage : (mBroadcastDroppedMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.BroadcastDroppedMessage")); }
			ScriptFunction BroadcastTakenFromBaseMessage() { return mBroadcastTakenFromBaseMessage ? mBroadcastTakenFromBaseMessage : (mBroadcastTakenFromBaseMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.BroadcastTakenFromBaseMessage")); }
			ScriptFunction BroadcastTakenDroppedMessage() { return mBroadcastTakenDroppedMessage ? mBroadcastTakenDroppedMessage : (mBroadcastTakenDroppedMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.BroadcastTakenDroppedMessage")); }
			ScriptFunction CalcSetHome() { return mCalcSetHome ? mCalcSetHome : (mCalcSetHome = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.CalcSetHome")); }
			ScriptFunction ClearHolder() { return mClearHolder ? mClearHolder : (mClearHolder = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.ClearHolder")); }
			ScriptFunction Position() { return mPosition ? mPosition : (mPosition = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.Position")); }
			ScriptFunction ValidHolder() { return mValidHolder ? mValidHolder : (mValidHolder = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.ValidHolder")); }
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.Touch")); }
			ScriptFunction FellOutOfWorld() { return mFellOutOfWorld ? mFellOutOfWorld : (mFellOutOfWorld = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.FellOutOfWorld")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.ReplicatedEvent")); }
			ScriptFunction ClientReturnedHome() { return mClientReturnedHome ? mClientReturnedHome : (mClientReturnedHome = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.ClientReturnedHome")); }
			ScriptFunction NotReachableBy() { return mNotReachableBy ? mNotReachableBy : (mNotReachableBy = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.NotReachableBy")); }
			ScriptFunction Landed() { return mLanded ? mLanded : (mLanded = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.Landed")); }
			ScriptFunction GetKismetEventObjective() { return mGetKismetEventObjective ? mGetKismetEventObjective : (mGetKismetEventObjective = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.GetKismetEventObjective")); }
			ScriptFunction LogTaken() { return mLogTaken ? mLogTaken : (mLogTaken = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.LogTaken")); }
			ScriptFunction LogReturned() { return mLogReturned ? mLogReturned : (mLogReturned = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.LogReturned")); }
			ScriptFunction LogDropped() { return mLogDropped ? mLogDropped : (mLogDropped = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.LogDropped")); }
			ScriptFunction CheckTouching() { return mCheckTouching ? mCheckTouching : (mCheckTouching = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.CheckTouching")); }
			ScriptFunction AutoSendHome() { return mAutoSendHome ? mAutoSendHome : (mAutoSendHome = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.AutoSendHome")); }
			ScriptFunction CheckFit() { return mCheckFit ? mCheckFit : (mCheckFit = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.CheckFit")); }
			ScriptFunction CheckPain() { return mCheckPain ? mCheckPain : (mCheckPain = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCarriedObject.CheckPain")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.FlagUse, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	bool ShouldMinimapRenderFor(PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldMinimapRenderFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void HighlightOnMinimap(int Switch)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		(cast(ScriptObject)this).ProcessEvent(Functions.HighlightOnMinimap, params.ptr, cast(void*)0);
	}
	Texture2D GetIconTexture()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetIconTexture, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawIcon, params.ptr, cast(void*)0);
	}
	void RenderMapIcon(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderMapIcon, params.ptr, cast(void*)0);
	}
	void RenderEnemyMapIcon(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, UTGameObjective NearbyObjective)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(UTGameObjective*)&params[12] = NearbyObjective;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderEnemyMapIcon, params.ptr, cast(void*)0);
	}
	void SetHolder(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHolder, params.ptr, cast(void*)0);
	}
	void SendFlagMessage(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendFlagMessage, params.ptr, cast(void*)0);
	}
	void Score()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Score, cast(void*)0, cast(void*)0);
	}
	void Drop(Controller Killer, bool bNoThrow)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(bool*)&params[4] = bNoThrow;
		(cast(ScriptObject)this).ProcessEvent(Functions.Drop, params.ptr, cast(void*)0);
	}
	void SendHome(Controller Returner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = Returner;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendHome, params.ptr, cast(void*)0);
	}
	void KismetSendHome()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KismetSendHome, cast(void*)0, cast(void*)0);
	}
	void BroadcastReturnedMessage()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastReturnedMessage, cast(void*)0, cast(void*)0);
	}
	void BroadcastDroppedMessage(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastDroppedMessage, params.ptr, cast(void*)0);
	}
	void BroadcastTakenFromBaseMessage(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastTakenFromBaseMessage, params.ptr, cast(void*)0);
	}
	void BroadcastTakenDroppedMessage(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastTakenDroppedMessage, params.ptr, cast(void*)0);
	}
	void CalcSetHome()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcSetHome, cast(void*)0, cast(void*)0);
	}
	void ClearHolder()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearHolder, cast(void*)0, cast(void*)0);
	}
	Actor Position()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Position, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	bool ValidHolder(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ValidHolder, params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.Touch, params.ptr, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(Functions.FellOutOfWorld, params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void ClientReturnedHome()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReturnedHome, cast(void*)0, cast(void*)0);
	}
	void NotReachableBy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotReachableBy, params.ptr, cast(void*)0);
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.Landed, params.ptr, cast(void*)0);
	}
	UDKGameObjective GetKismetEventObjective()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetKismetEventObjective, params.ptr, cast(void*)0);
		return *cast(UDKGameObjective*)params.ptr;
	}
	void LogTaken(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogTaken, params.ptr, cast(void*)0);
	}
	void LogReturned(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogReturned, params.ptr, cast(void*)0);
	}
	void LogDropped(Controller EventInstigator)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = EventInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.LogDropped, params.ptr, cast(void*)0);
	}
	void CheckTouching()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckTouching, cast(void*)0, cast(void*)0);
	}
	void AutoSendHome()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AutoSendHome, cast(void*)0, cast(void*)0);
	}
	void CheckFit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckFit, cast(void*)0, cast(void*)0);
	}
	void CheckPain()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckPain, cast(void*)0, cast(void*)0);
	}
}
