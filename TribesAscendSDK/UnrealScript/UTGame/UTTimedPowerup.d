module UnrealScript.UTGame.UTTimedPowerup;

import ScriptClasses;
import UnrealScript.UTGame.UTInventory;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.UIRoot;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTTimedPowerup : UTInventory
{
public extern(D):
	@property final auto ref
	{
		float PP_Scene_Desaturation() { return *cast(float*)(cast(size_t)cast(void*)this + 616); }
		Vector PP_Scene_HighLights() { return *cast(Vector*)(cast(size_t)cast(void*)this + 604); }
		float WarningTime() { return *cast(float*)(cast(size_t)cast(void*)this + 600); }
		float TransitionDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 596); }
		float TransitionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
		UIRoot.TextureCoordinates IconCoords() { return *cast(UIRoot.TextureCoordinates*)(cast(size_t)cast(void*)this + 576); }
		ScriptName PowerupStatName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 568); }
		SoundCue PowerupOverSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 564); }
		int HudIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 560); }
		float TimeRemaining() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	}
final:
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49497], params.ptr, cast(void*)0);
	}
	void GivenTo(Pawn NewOwner, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewOwner;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49499], params.ptr, cast(void*)0);
	}
	void ClientGivenTo(Pawn NewOwner, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewOwner;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49502], params.ptr, cast(void*)0);
	}
	void AdjustPPEffects(Pawn P, bool bRemove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(bool*)&params[4] = bRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49505], params.ptr, cast(void*)0);
	}
	void ClientLostItem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49509], cast(void*)0, cast(void*)0);
	}
	void ClientSetTimeRemaining(float NewTimeRemaining)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewTimeRemaining;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49510], params.ptr, cast(void*)0);
	}
	void TimeRemaingUpdated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49512], cast(void*)0, cast(void*)0);
	}
	void DisplayPowerup(Canvas pCanvas, UTHUD pHUD, float ResolutionScale, float* YPos)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(UTHUD*)&params[4] = pHUD;
		*cast(float*)&params[8] = ResolutionScale;
		*cast(float*)&params[12] = *YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49513], params.ptr, cast(void*)0);
		*YPos = *cast(float*)&params[12];
	}
	bool DenyPickupQuery(ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ItemClass;
		*cast(Actor*)&params[4] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49524], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void TimeExpired()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49529], cast(void*)0, cast(void*)0);
	}
	float BotDesireability(Actor PickupHolder, Pawn P, Controller C)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = PickupHolder;
		*cast(Pawn*)&params[4] = P;
		*cast(Controller*)&params[8] = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49531], params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49536], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	ScriptName GetPowerupStatName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49540], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
}
