module UnrealScript.UDKBase.UDKAnimBlendByPhysicsVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByPhysicsVolume : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKAnimBlendByPhysicsVolume")()); }
	private static __gshared UDKAnimBlendByPhysicsVolume mDefaultProperties;
	@property final static UDKAnimBlendByPhysicsVolume DefaultProperties() { mixin(MGDPC!(UDKAnimBlendByPhysicsVolume, "UDKAnimBlendByPhysicsVolume UDKBase.Default__UDKAnimBlendByPhysicsVolume")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPhysicsVolumeChanged;
		public @property static final ScriptFunction PhysicsVolumeChanged() { mixin(MGF!("mPhysicsVolumeChanged", "Function UDKBase.UDKAnimBlendByPhysicsVolume.PhysicsVolumeChanged")()); }
	}
	struct PhysicsVolumeParams
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UDKBase.UDKAnimBlendByPhysicsVolume.PhysicsVolumeParams")()); }
		@property final
		{
			auto ref
			{
				float MaxGravity() { mixin(MGPS!("float", 12)()); }
				float MinGravity() { mixin(MGPS!("float", 8)()); }
				int ChildIndex() { mixin(MGPS!("int", 0)()); }
			}
			bool bCheckGravity() { mixin(MGBPS!(4, 0x2)()); }
			bool bCheckGravity(bool val) { mixin(MSBPS!(4, 0x2)()); }
			bool bWaterVolume() { mixin(MGBPS!(4, 0x1)()); }
			bool bWaterVolume(bool val) { mixin(MSBPS!(4, 0x1)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UDKAnimBlendByPhysicsVolume.PhysicsVolumeParams) PhysicsParamList() { mixin(MGPC!("ScriptArray!(UDKAnimBlendByPhysicsVolume.PhysicsVolumeParams)", 296)()); }
		PhysicsVolume LastPhysicsVolume() { mixin(MGPC!("PhysicsVolume", 308)()); }
	}
	final void PhysicsVolumeChanged(PhysicsVolume NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(Functions.PhysicsVolumeChanged, params.ptr, cast(void*)0);
	}
}
