module UnrealScript.Engine.SeqEvent_ParticleEvent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_ParticleEvent : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqEvent_ParticleEvent")); }
	private static __gshared SeqEvent_ParticleEvent mDefaultProperties;
	@property final static SeqEvent_ParticleEvent DefaultProperties() { mixin(MGDPC("SeqEvent_ParticleEvent", "SeqEvent_ParticleEvent Engine.Default__SeqEvent_ParticleEvent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqEvent_ParticleEvent.GetObjClassVersion")); }
	}
	enum EParticleEventOutputType : ubyte
	{
		ePARTICLEOUT_Spawn = 0,
		ePARTICLEOUT_Death = 1,
		ePARTICLEOUT_Collision = 2,
		ePARTICLEOUT_Kismet = 3,
		ePARTICLEOUT_MAX = 4,
	}
	@property final
	{
		auto ref
		{
			Vector EventNormal() { mixin(MGPC("Vector", 292)); }
			float EventParticleTime() { mixin(MGPC("float", 288)); }
			Vector EventVelocity() { mixin(MGPC("Vector", 276)); }
			float EventEmitterTime() { mixin(MGPC("float", 272)); }
			Vector EventPosition() { mixin(MGPC("Vector", 260)); }
			SeqEvent_ParticleEvent.EParticleEventOutputType EventType() { mixin(MGPC("SeqEvent_ParticleEvent.EParticleEventOutputType", 256)); }
		}
		bool UseRelfectedImpactVector() { mixin(MGBPC(304, 0x1)); }
		bool UseRelfectedImpactVector(bool val) { mixin(MSBPC(304, 0x1)); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
