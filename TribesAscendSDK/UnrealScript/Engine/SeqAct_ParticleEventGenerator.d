module UnrealScript.Engine.SeqAct_ParticleEventGenerator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ParticleEventGenerator : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_ParticleEventGenerator")); }
	private static __gshared SeqAct_ParticleEventGenerator mDefaultProperties;
	@property final static SeqAct_ParticleEventGenerator DefaultProperties() { mixin(MGDPC("SeqAct_ParticleEventGenerator", "SeqAct_ParticleEventGenerator Engine.Default__SeqAct_ParticleEventGenerator")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqAct_ParticleEventGenerator.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptString) EventNames() { mixin(MGPC("ScriptArray!(ScriptString)", 240)); }
			Vector EventNormal() { mixin(MGPC("Vector", 292)); }
			Vector EventVelocity() { mixin(MGPC("Vector", 280)); }
			Vector EventDirection() { mixin(MGPC("Vector", 268)); }
			Vector EventLocation() { mixin(MGPC("Vector", 256)); }
			float EventTime() { mixin(MGPC("float", 252)); }
			Actor Instigator() { mixin(MGPC("Actor", 236)); }
		}
		bool bUseEmitterLocation() { mixin(MGBPC(232, 0x2)); }
		bool bUseEmitterLocation(bool val) { mixin(MSBPC(232, 0x2)); }
		bool bEnabled() { mixin(MGBPC(232, 0x1)); }
		bool bEnabled(bool val) { mixin(MSBPC(232, 0x1)); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
