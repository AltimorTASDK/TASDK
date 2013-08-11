module UnrealScript.TribesGame.TrDevice_Twinfusor;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Twinfusor : TrDevice
{
	public @property final auto ref SoundCue m_SpinfusorIdleSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 2148); }
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81484], params.ptr, cast(void*)0);
	}
	final void OnAnimPlay(AnimNodeSequence SeqNode)
	{
		ubyte params[4];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81486], params.ptr, cast(void*)0);
	}
	final void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81488], params.ptr, cast(void*)0);
	}
	final void SetDiscSpinning(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81492], params.ptr, cast(void*)0);
	}
	final void PlayWeaponEquip()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81495], cast(void*)0, cast(void*)0);
	}
	final void PlayWeaponPutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81496], cast(void*)0, cast(void*)0);
	}
	final void PutDownFast()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81497], cast(void*)0, cast(void*)0);
	}
	final void OnSwitchAwayFromWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81498], cast(void*)0, cast(void*)0);
	}
}
