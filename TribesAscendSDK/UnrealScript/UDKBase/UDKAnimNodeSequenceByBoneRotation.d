module UnrealScript.UDKBase.UDKAnimNodeSequenceByBoneRotation;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;

extern(C++) interface UDKAnimNodeSequenceByBoneRotation : AnimNodeSequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimNodeSequenceByBoneRotation")); }
	private static __gshared UDKAnimNodeSequenceByBoneRotation mDefaultProperties;
	@property final static UDKAnimNodeSequenceByBoneRotation DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKAnimNodeSequenceByBoneRotation)("UDKAnimNodeSequenceByBoneRotation UDKBase.Default__UDKAnimNodeSequenceByBoneRotation")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnBecomeRelevant;
		public @property static final ScriptFunction OnBecomeRelevant() { return mOnBecomeRelevant ? mOnBecomeRelevant : (mOnBecomeRelevant = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKAnimNodeSequenceByBoneRotation.OnBecomeRelevant")); }
	}
	struct AnimByRotation
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UDKBase.UDKAnimNodeSequenceByBoneRotation.AnimByRotation")); }
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
		(cast(ScriptObject)this).ProcessEvent(Functions.OnBecomeRelevant, cast(void*)0, cast(void*)0);
	}
}
