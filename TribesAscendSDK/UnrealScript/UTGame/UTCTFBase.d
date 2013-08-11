module UnrealScript.UTGame.UTCTFBase;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.UTGame.UTBot;

extern(C++) interface UTCTFBase : UTGameObjective
{
	public @property final auto ref ScriptArray!(SoundNodeWave) NearLocationSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1076); }
	public @property final auto ref ScriptArray!(SoundNodeWave) MidfieldHighSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1088); }
	public @property final auto ref ScriptArray!(SoundNodeWave) MidfieldLowSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1100); }
	public @property final auto ref ScriptClass CTFAnnouncerMessagesClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1072); }
	public @property final auto ref MaterialInstanceConstant MIC_FlagBaseColor() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1064); }
	public @property final auto ref MaterialInstanceConstant FlagBaseMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1060); }
	public @property final auto ref float BaseExitTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1052); }
	public @property final auto ref float NearBaseRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1048); }
	public @property final auto ref float MidFieldLowZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1044); }
	public @property final auto ref float MidFieldHighZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1040); }
	public @property final auto ref ScriptClass FlagType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1036); }
	public @property final auto ref UTCarriedObject myFlag() { return *cast(UTCarriedObject*)(cast(size_t)cast(void*)this + 1032); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44504], cast(void*)0, cast(void*)0);
	}
	final Actor GetBestViewTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44506], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	final int GetLocationMessageIndex(UTBot B, Pawn StatusPawn)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = StatusPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44508], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final SoundNodeWave GetLocationSpeechFor(PlayerController PC, int LocationSpeechOffset, int MessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = LocationSpeechOffset;
		*cast(int*)&params[8] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44514], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	final void ObjectiveChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44519], cast(void*)0, cast(void*)0);
	}
	final UTCarriedObject GetFlag()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44521], params.ptr, cast(void*)0);
		return *cast(UTCarriedObject*)params.ptr;
	}
	final void SetAlarm(bool bNowOn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNowOn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44523], params.ptr, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44525], params.ptr, cast(void*)0);
	}
	final bool IsActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[44527], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
