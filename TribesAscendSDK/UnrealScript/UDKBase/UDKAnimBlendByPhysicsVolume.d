module UnrealScript.UDKBase.UDKAnimBlendByPhysicsVolume;

import ScriptClasses;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByPhysicsVolume : UDKAnimBlendBase
{
	struct PhysicsVolumeParams
	{
		public @property final auto ref float MaxGravity() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __MaxGravity[4];
		public @property final auto ref float MinGravity() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __MinGravity[4];
		public @property final bool bCheckGravity() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x2) != 0; }
		public @property final bool bCheckGravity(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x2; } return val; }
		private ubyte __bCheckGravity[4];
		public @property final bool bWaterVolume() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
		public @property final bool bWaterVolume(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		private ubyte __bWaterVolume[4];
		public @property final auto ref int ChildIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __ChildIndex[4];
	}
	public @property final auto ref ScriptArray!(UDKAnimBlendByPhysicsVolume.PhysicsVolumeParams) PhysicsParamList() { return *cast(ScriptArray!(UDKAnimBlendByPhysicsVolume.PhysicsVolumeParams)*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref PhysicsVolume LastPhysicsVolume() { return *cast(PhysicsVolume*)(cast(size_t)cast(void*)this + 308); }
	final void PhysicsVolumeChanged(PhysicsVolume NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34539], params.ptr, cast(void*)0);
	}
}
