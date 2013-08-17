module UnrealScript.UTGame.UTCarriedObject;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTCarriedObject")); }
	private static __gshared UTCarriedObject mDefaultProperties;
	@property final static UTCarriedObject DefaultProperties() { mixin(MGDPC("UTCarriedObject", "UTCarriedObject UTGame.Default__UTCarriedObject")); }
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
			ScriptFunction FlagUse() { mixin(MGF("mFlagUse", "Function UTGame.UTCarriedObject.FlagUse")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function UTGame.UTCarriedObject.PostBeginPlay")); }
			ScriptFunction ShouldMinimapRenderFor() { mixin(MGF("mShouldMinimapRenderFor", "Function UTGame.UTCarriedObject.ShouldMinimapRenderFor")); }
			ScriptFunction HighlightOnMinimap() { mixin(MGF("mHighlightOnMinimap", "Function UTGame.UTCarriedObject.HighlightOnMinimap")); }
			ScriptFunction GetIconTexture() { mixin(MGF("mGetIconTexture", "Function UTGame.UTCarriedObject.GetIconTexture")); }
			ScriptFunction DrawIcon() { mixin(MGF("mDrawIcon", "Function UTGame.UTCarriedObject.DrawIcon")); }
			ScriptFunction RenderMapIcon() { mixin(MGF("mRenderMapIcon", "Function UTGame.UTCarriedObject.RenderMapIcon")); }
			ScriptFunction RenderEnemyMapIcon() { mixin(MGF("mRenderEnemyMapIcon", "Function UTGame.UTCarriedObject.RenderEnemyMapIcon")); }
			ScriptFunction SetHolder() { mixin(MGF("mSetHolder", "Function UTGame.UTCarriedObject.SetHolder")); }
			ScriptFunction SendFlagMessage() { mixin(MGF("mSendFlagMessage", "Function UTGame.UTCarriedObject.SendFlagMessage")); }
			ScriptFunction Score() { mixin(MGF("mScore", "Function UTGame.UTCarriedObject.Score")); }
			ScriptFunction Drop() { mixin(MGF("mDrop", "Function UTGame.UTCarriedObject.Drop")); }
			ScriptFunction SendHome() { mixin(MGF("mSendHome", "Function UTGame.UTCarriedObject.SendHome")); }
			ScriptFunction KismetSendHome() { mixin(MGF("mKismetSendHome", "Function UTGame.UTCarriedObject.KismetSendHome")); }
			ScriptFunction BroadcastReturnedMessage() { mixin(MGF("mBroadcastReturnedMessage", "Function UTGame.UTCarriedObject.BroadcastReturnedMessage")); }
			ScriptFunction BroadcastDroppedMessage() { mixin(MGF("mBroadcastDroppedMessage", "Function UTGame.UTCarriedObject.BroadcastDroppedMessage")); }
			ScriptFunction BroadcastTakenFromBaseMessage() { mixin(MGF("mBroadcastTakenFromBaseMessage", "Function UTGame.UTCarriedObject.BroadcastTakenFromBaseMessage")); }
			ScriptFunction BroadcastTakenDroppedMessage() { mixin(MGF("mBroadcastTakenDroppedMessage", "Function UTGame.UTCarriedObject.BroadcastTakenDroppedMessage")); }
			ScriptFunction CalcSetHome() { mixin(MGF("mCalcSetHome", "Function UTGame.UTCarriedObject.CalcSetHome")); }
			ScriptFunction ClearHolder() { mixin(MGF("mClearHolder", "Function UTGame.UTCarriedObject.ClearHolder")); }
			ScriptFunction Position() { mixin(MGF("mPosition", "Function UTGame.UTCarriedObject.Position")); }
			ScriptFunction ValidHolder() { mixin(MGF("mValidHolder", "Function UTGame.UTCarriedObject.ValidHolder")); }
			ScriptFunction Touch() { mixin(MGF("mTouch", "Function UTGame.UTCarriedObject.Touch")); }
			ScriptFunction FellOutOfWorld() { mixin(MGF("mFellOutOfWorld", "Function UTGame.UTCarriedObject.FellOutOfWorld")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function UTGame.UTCarriedObject.ReplicatedEvent")); }
			ScriptFunction ClientReturnedHome() { mixin(MGF("mClientReturnedHome", "Function UTGame.UTCarriedObject.ClientReturnedHome")); }
			ScriptFunction NotReachableBy() { mixin(MGF("mNotReachableBy", "Function UTGame.UTCarriedObject.NotReachableBy")); }
			ScriptFunction Landed() { mixin(MGF("mLanded", "Function UTGame.UTCarriedObject.Landed")); }
			ScriptFunction GetKismetEventObjective() { mixin(MGF("mGetKismetEventObjective", "Function UTGame.UTCarriedObject.GetKismetEventObjective")); }
			ScriptFunction LogTaken() { mixin(MGF("mLogTaken", "Function UTGame.UTCarriedObject.LogTaken")); }
			ScriptFunction LogReturned() { mixin(MGF("mLogReturned", "Function UTGame.UTCarriedObject.LogReturned")); }
			ScriptFunction LogDropped() { mixin(MGF("mLogDropped", "Function UTGame.UTCarriedObject.LogDropped")); }
			ScriptFunction CheckTouching() { mixin(MGF("mCheckTouching", "Function UTGame.UTCarriedObject.CheckTouching")); }
			ScriptFunction AutoSendHome() { mixin(MGF("mAutoSendHome", "Function UTGame.UTCarriedObject.AutoSendHome")); }
			ScriptFunction CheckFit() { mixin(MGF("mCheckFit", "Function UTGame.UTCarriedObject.CheckFit")); }
			ScriptFunction CheckPain() { mixin(MGF("mCheckPain", "Function UTGame.UTCarriedObject.CheckPain")); }
		}
	}
	static struct Home
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTCarriedObject.Home")); }
	}
	static struct Held
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTCarriedObject.Held")); }
	}
	static struct Dropped
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTCarriedObject.Dropped")); }
	}
	@property final
	{
		auto ref
		{
			ScriptName GameObjBone3P() { mixin(MGPC("ScriptName", 596)); }
			Rotator GameObjRot3P() { mixin(MGPC("Rotator", 616)); }
			Vector GameObjOffset3P() { mixin(MGPC("Vector", 604)); }
			Rotator GameObjRot1P() { mixin(MGPC("Rotator", 640)); }
			Vector GameObjOffset1P() { mixin(MGPC("Vector", 628)); }
			ScriptArray!(Controller) Assists() { mixin(MGPC("ScriptArray!(Controller)", 560)); }
			ScriptArray!(UDKPlayerController.ObjectiveAnnouncementInfo) NeedToPickUpAnnouncements() { mixin(MGPC("ScriptArray!(UDKPlayerController.ObjectiveAnnouncementInfo)", 680)); }
			ForceFeedbackWaveform PickUpWaveForm() { mixin(MGPC("ForceFeedbackWaveform", 764)); }
			UObject.LinearColor GoldColor() { mixin(MGPC("UObject.LinearColor", 748)); }
			UObject.LinearColor BlueColor() { mixin(MGPC("UObject.LinearColor", 732)); }
			UObject.LinearColor RedColor() { mixin(MGPC("UObject.LinearColor", 716)); }
			int LastSeeMessageIndex() { mixin(MGPC("int", 712)); }
			float LastFlagSeeTime() { mixin(MGPC("float", 708)); }
			float LastHighlightUpdate() { mixin(MGPC("float", 704)); }
			float HighlightSpeed() { mixin(MGPC("float", 700)); }
			float MaxHighlightScale() { mixin(MGPC("float", 696)); }
			float HighlightScale() { mixin(MGPC("float", 692)); }
			float DefaultHeight() { mixin(MGPC("float", 676)); }
			float DefaultRadius() { mixin(MGPC("float", 672)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'FlagLight'!
			Pawn OldHolder() { mixin(MGPC("Pawn", 664)); }
			SoundCue ReturnedSound() { mixin(MGPC("SoundCue", 660)); }
			SoundCue DroppedSound() { mixin(MGPC("SoundCue", 656)); }
			SoundCue PickupSound() { mixin(MGPC("SoundCue", 652)); }
			Texture2D IconTexture() { mixin(MGPC("Texture2D", 592)); }
			UIRoot.TextureCoordinates IconCoords() { mixin(MGPC("UIRoot.TextureCoordinates", 576)); }
			float MapSize() { mixin(MGPC("float", 572)); }
			Controller FirstTouch() { mixin(MGPC("Controller", 556)); }
			float MaxDropTime() { mixin(MGPC("float", 552)); }
			float TakenTime() { mixin(MGPC("float", 548)); }
			Pawn Holder() { mixin(MGPC("Pawn", 544)); }
			UTPlayerReplicationInfo HolderPRI() { mixin(MGPC("UTPlayerReplicationInfo", 540)); }
			float TossDistance() { mixin(MGPC("float", 536)); }
		}
		bool bUseTeamColorForIcon() { mixin(MGBPC(532, 0x4)); }
		bool bUseTeamColorForIcon(bool val) { mixin(MSBPC(532, 0x4)); }
		bool bLeavingDroppedState() { mixin(MGBPC(532, 0x2)); }
		bool bLeavingDroppedState(bool val) { mixin(MSBPC(532, 0x2)); }
		bool bLastSecondSave() { mixin(MGBPC(532, 0x1)); }
		bool bLastSecondSave(bool val) { mixin(MSBPC(532, 0x1)); }
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
	void Drop(Controller* Killer = null, bool* bNoThrow = null)
	{
		ubyte params[8];
		params[] = 0;
		if (Killer !is null)
			*cast(Controller*)params.ptr = *Killer;
		if (bNoThrow !is null)
			*cast(bool*)&params[4] = *bNoThrow;
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
