module UnrealScript.TribesGame.TrRabbitBase;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.TribesGame.TrHelpTextManager;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrFlagRabbit;
import UnrealScript.UTGame.UTBot;

extern(C++) interface TrRabbitBase : UTGameObjective
{
	public @property final auto ref ScriptArray!(SoundNodeWave) NearLocationSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1072); }
	public @property final auto ref ScriptArray!(SoundNodeWave) MidfieldHighSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1084); }
	public @property final auto ref ScriptArray!(SoundNodeWave) MidfieldLowSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1096); }
	public @property final auto ref TrAnimNodeBlendList m_OpenCloseBlendList() { return *cast(TrAnimNodeBlendList*)(cast(size_t)cast(void*)this + 1112); }
	public @property final auto ref ScriptClass CTFAnnouncerMessagesClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1068); }
	public @property final auto ref MaterialInstanceConstant MIC_FlagBaseColor() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1060); }
	public @property final auto ref MaterialInstanceConstant FlagBaseMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1056); }
	public @property final auto ref float BaseExitTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1048); }
	public @property final auto ref float NearBaseRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1044); }
	public @property final auto ref float MidFieldLowZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1040); }
	public @property final auto ref float MidFieldHighZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1036); }
	public @property final auto ref TrFlagRabbit myFlag() { return *cast(TrFlagRabbit*)(cast(size_t)cast(void*)this + 1032); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109750], cast(void*)0, cast(void*)0);
	}
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109751], params.ptr, cast(void*)0);
	}
	final Actor GetBestViewTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109753], params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	final int GetLocationMessageIndex(UTBot B, Pawn StatusPawn)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = StatusPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109755], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final SoundNodeWave GetLocationSpeechFor(PlayerController PC, int LocationSpeechOffset, int MessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = LocationSpeechOffset;
		*cast(int*)&params[8] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109761], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	final void ObjectiveChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109766], cast(void*)0, cast(void*)0);
	}
	final UTCarriedObject GetFlag()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109768], params.ptr, cast(void*)0);
		return *cast(UTCarriedObject*)params.ptr;
	}
	final bool IsActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109770], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void OnFlagComesHome()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109772], cast(void*)0, cast(void*)0);
	}
	final void OnFlagTaken()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109773], cast(void*)0, cast(void*)0);
	}
	final void SpawnHelpTextCollisionProxy(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109774], params.ptr, cast(void*)0);
	}
}
