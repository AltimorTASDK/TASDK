module UnrealScript.UDKBase.UDKAnimNodeSequenceByBoneRotation;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;

extern(C++) interface UDKAnimNodeSequenceByBoneRotation : AnimNodeSequence
{
	struct AnimByRotation
	{
		public @property final auto ref ScriptName AnimName() { return *cast(ScriptName*)(cast(size_t)&this + 12); }
		private ubyte __AnimName[8];
		public @property final auto ref Rotator DesiredRotation() { return *cast(Rotator*)(cast(size_t)&this + 0); }
		private ubyte __DesiredRotation[12];
	}
	public @property final auto ref ScriptArray!(UDKAnimNodeSequenceByBoneRotation.AnimByRotation) AnimList() { return *cast(ScriptArray!(UDKAnimNodeSequenceByBoneRotation.AnimByRotation)*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref UObject.EAxis BoneAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 320); }
	final void OnBecomeRelevant()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34628], cast(void*)0, cast(void*)0);
	}
}
