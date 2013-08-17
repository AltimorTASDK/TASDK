module UnrealScript.UDKBase.UDKAnimNodeSequenceByBoneRotation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;

extern(C++) interface UDKAnimNodeSequenceByBoneRotation : AnimNodeSequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKAnimNodeSequenceByBoneRotation")()); }
	private static __gshared UDKAnimNodeSequenceByBoneRotation mDefaultProperties;
	@property final static UDKAnimNodeSequenceByBoneRotation DefaultProperties() { mixin(MGDPC!(UDKAnimNodeSequenceByBoneRotation, "UDKAnimNodeSequenceByBoneRotation UDKBase.Default__UDKAnimNodeSequenceByBoneRotation")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnBecomeRelevant;
		public @property static final ScriptFunction OnBecomeRelevant() { mixin(MGF!("mOnBecomeRelevant", "Function UDKBase.UDKAnimNodeSequenceByBoneRotation.OnBecomeRelevant")()); }
	}
	struct AnimByRotation
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKAnimNodeSequenceByBoneRotation.AnimByRotation")()); }
		@property final auto ref
		{
			ScriptName AnimName() { mixin(MGPS!("ScriptName", 12)()); }
			Rotator DesiredRotation() { mixin(MGPS!("Rotator", 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UDKAnimNodeSequenceByBoneRotation.AnimByRotation) AnimList() { mixin(MGPC!("ScriptArray!(UDKAnimNodeSequenceByBoneRotation.AnimByRotation)", 332)()); }
		UObject.EAxis BoneAxis() { mixin(MGPC!("UObject.EAxis", 328)()); }
		ScriptName BoneName() { mixin(MGPC!("ScriptName", 320)()); }
	}
	final void OnBecomeRelevant()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnBecomeRelevant, cast(void*)0, cast(void*)0);
	}
}
