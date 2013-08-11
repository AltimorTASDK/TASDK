module UnrealScript.UTGame.UTPickupFactory;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.Projectile;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.UDKBase.UDKPickupFactory;
import UnrealScript.UTGame.UTBot;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTPickupFactory : UDKPickupFactory
{
	public @property final auto ref ScriptArray!(SoundNodeWave) LocationSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 924); }
	public @property final auto ref ForceFeedbackWaveform PickUpWaveForm() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 940); }
	public @property final auto ref float LastSeekNotificationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 936); }
	public @property final bool bHasLocationSpeech() { return (*cast(uint*)(cast(size_t)cast(void*)this + 920) & 0x1) != 0; }
	public @property final bool bHasLocationSpeech(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 920) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 920) &= ~0x1; } return val; }
	public @property final auto ref ScriptName PickupStatName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 912); }
	public @property final auto ref SoundCue RespawnSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 900); }
	public @property final auto ref Controller TeamOwner() { return *cast(Controller*)(cast(size_t)cast(void*)this + 884); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40402], cast(void*)0, cast(void*)0);
	}
	final void SetResOut()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40403], cast(void*)0, cast(void*)0);
	}
	final void DisablePickup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40404], cast(void*)0, cast(void*)0);
	}
	final void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40405], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40406], params.ptr, cast(void*)0);
	}
	final bool ShouldCamp(UTBot B, float MaxWait)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(float*)&params[4] = MaxWait;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40408], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void UpdateHUD(UTHUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTHUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40414], params.ptr, cast(void*)0);
	}
	final void RespawnEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40416], cast(void*)0, cast(void*)0);
	}
	final bool StopsProjectile(Projectile P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Projectile*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40417], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void StartPulse(UObject.LinearColor TargetEmissive)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UObject.LinearColor*)params.ptr = TargetEmissive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40423], params.ptr, cast(void*)0);
	}
	final void SetPickupMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40436], cast(void*)0, cast(void*)0);
	}
	final ScriptName GetPickupStatName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40437], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	final void InitPickupMeshEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40439], cast(void*)0, cast(void*)0);
	}
	final void SetPickupVisible()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40440], cast(void*)0, cast(void*)0);
	}
	final void SetPickupHidden()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40441], cast(void*)0, cast(void*)0);
	}
	final void SetInitialState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40442], cast(void*)0, cast(void*)0);
	}
	final void PickedUpBy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40443], params.ptr, cast(void*)0);
	}
}
