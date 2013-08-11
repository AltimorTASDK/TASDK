module UnrealScript.Engine.SoundCue;

import ScriptClasses;
import UnrealScript.Engine.AudioDevice;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Engine.FaceFXAnimSet;

extern(C++) interface SoundCue : UObject
{
	struct SoundNodeEditorData
	{
		public @property final auto ref int NodePosY() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __NodePosY[4];
		public @property final auto ref int NodePosX() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __NodePosX[4];
	}
	public @property final auto ref ScriptString FaceFXAnimName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref FaceFXAnimSet FaceFXAnimSetRef() { return *cast(FaceFXAnimSet*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref ScriptString FaceFXGroupName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptName SoundGroup() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref int CurrentPlayCount() { return *cast(int*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref int MaxConcurrentPlayCount() { return *cast(int*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float PitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref float VolumeMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref float MaxAudibleDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref SoundNode FirstNode() { return *cast(SoundNode*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref AudioDevice.ESoundClassName SoundClassName() { return *cast(AudioDevice.ESoundClassName*)(cast(size_t)cast(void*)this + 68); }
	// WARNING: Property 'SoundClass' has the same name as a defined type!
	final float GetCueDuration()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10380], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
}
