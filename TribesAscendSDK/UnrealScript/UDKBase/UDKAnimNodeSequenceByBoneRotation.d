module UnrealScript.UDKBase.UDKAnimNodeSequenceByBoneRotation;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;

extern(C++) interface UDKAnimNodeSequenceByBoneRotation : AnimNodeSequence
{
public extern(D):
	struct AnimByRotation
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final auto ref
		{
			ScriptName AnimName() { return *cast(ScriptName*)(cast(size_t)&this + 12); }
			Rotator DesiredRotation() { return *cast(Rotator*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UDKAnimNodeSequenceByBoneRotation.AnimByRotation) AnimList() { return *cast(ScriptArray!(UDKAnimNodeSequenceByBoneRotation.AnimByRotation)*)(cast(size_t)cast(void*)this + 332); }
		UObject.EAxis BoneAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 328); }
		ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 320); }
	}
	final void OnBecomeRelevant()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34628], cast(void*)0, cast(void*)0);
	}
}
