module UnrealScript.TribesGame.TrTimedPowerup;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.UIRoot;
import UnrealScript.TribesGame.TrInventory;
import UnrealScript.Engine.HUD;

extern(C++) interface TrTimedPowerup : TrInventory
{
	public @property final auto ref float PP_Scene_Desaturation() { return *cast(float*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref Vector PP_Scene_HighLights() { return *cast(Vector*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref float WarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
	public @property final auto ref float TransitionDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
	public @property final auto ref float TransitionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref UIRoot.TextureCoordinates IconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref ScriptName PowerupStatName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 572); }
	public @property final auto ref SoundCue PowerupOverSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref int HudIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref float TimeRemaining() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113186], params.ptr, cast(void*)0);
	}
	final void GivenTo(Pawn NewOwner, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewOwner;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113188], params.ptr, cast(void*)0);
	}
	final void ClientGivenTo(Pawn NewOwner, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewOwner;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113191], params.ptr, cast(void*)0);
	}
	final void AdjustPPEffects(Pawn P, bool bRemove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(bool*)&params[4] = bRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113194], params.ptr, cast(void*)0);
	}
	final void ClientLostItem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113197], cast(void*)0, cast(void*)0);
	}
	final void ClientSetTimeRemaining(float NewTimeRemaining)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewTimeRemaining;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113198], params.ptr, cast(void*)0);
	}
	final void TimeRemaingUpdated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113200], cast(void*)0, cast(void*)0);
	}
	final void DisplayPowerup(Canvas pCanvas, HUD pHUD, float ResolutionScale, float* YPos)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(HUD*)&params[4] = pHUD;
		*cast(float*)&params[8] = ResolutionScale;
		*cast(float*)&params[12] = *YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113201], params.ptr, cast(void*)0);
		*YPos = *cast(float*)&params[12];
	}
	final bool DenyPickupQuery(ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ItemClass;
		*cast(Actor*)&params[4] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113206], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void TimeExpired()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113211], cast(void*)0, cast(void*)0);
	}
	final float BotDesireability(Actor PickupHolder, Pawn P, Controller C)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = PickupHolder;
		*cast(Pawn*)&params[4] = P;
		*cast(Controller*)&params[8] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113212], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	final float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113217], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final ScriptName GetPowerupStatName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[113221], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
}
