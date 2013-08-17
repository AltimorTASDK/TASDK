module UnrealScript.Engine.DynamicBlockingVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.BlockingVolume;

extern(C++) interface DynamicBlockingVolume : BlockingVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DynamicBlockingVolume")()); }
	private static __gshared DynamicBlockingVolume mDefaultProperties;
	@property final static DynamicBlockingVolume DefaultProperties() { mixin(MGDPC!(DynamicBlockingVolume, "DynamicBlockingVolume Engine.Default__DynamicBlockingVolume")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mCreateCheckpointRecord;
			ScriptFunction mApplyCheckpointRecord;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.DynamicBlockingVolume.PostBeginPlay")()); }
			ScriptFunction CreateCheckpointRecord() { mixin(MGF!("mCreateCheckpointRecord", "Function Engine.DynamicBlockingVolume.CreateCheckpointRecord")()); }
			ScriptFunction ApplyCheckpointRecord() { mixin(MGF!("mApplyCheckpointRecord", "Function Engine.DynamicBlockingVolume.ApplyCheckpointRecord")()); }
		}
	}
	struct CheckpointRecord
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.DynamicBlockingVolume.CheckpointRecord")()); }
		@property final
		{
			auto ref
			{
				Rotator Rotation() { mixin(MGPS!(Rotator, 12)()); }
				Vector Location() { mixin(MGPS!(Vector, 0)()); }
			}
			bool bNeedsReplication() { mixin(MGBPS!(24, 0x4)()); }
			bool bNeedsReplication(bool val) { mixin(MSBPS!(24, 0x4)()); }
			bool bBlockActors() { mixin(MGBPS!(24, 0x2)()); }
			bool bBlockActors(bool val) { mixin(MSBPS!(24, 0x2)()); }
			bool bCollideActors() { mixin(MGBPS!(24, 0x1)()); }
			bool bCollideActors(bool val) { mixin(MSBPS!(24, 0x1)()); }
		}
	}
	@property final
	{
		bool bEnabled() { mixin(MGBPC!(524, 0x1)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(524, 0x1)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void CreateCheckpointRecord(ref DynamicBlockingVolume.CheckpointRecord Record)
	{
		ubyte params[28];
		params[] = 0;
		*cast(DynamicBlockingVolume.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(DynamicBlockingVolume.CheckpointRecord*)params.ptr;
	}
	void ApplyCheckpointRecord(ref const DynamicBlockingVolume.CheckpointRecord Record)
	{
		ubyte params[28];
		params[] = 0;
		*cast(DynamicBlockingVolume.CheckpointRecord*)params.ptr = Record;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyCheckpointRecord, params.ptr, cast(void*)0);
		*Record = *cast(DynamicBlockingVolume.CheckpointRecord*)params.ptr;
	}
}
