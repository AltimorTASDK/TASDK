module UnrealScript.Engine.SeqAct_SetParticleSysParam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleSystemComponent;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetParticleSysParam : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_SetParticleSysParam")); }
	private static __gshared SeqAct_SetParticleSysParam mDefaultProperties;
	@property final static SeqAct_SetParticleSysParam DefaultProperties() { mixin(MGDPC("SeqAct_SetParticleSysParam", "SeqAct_SetParticleSysParam Engine.Default__SeqAct_SetParticleSysParam")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(ParticleSystemComponent.ParticleSysParam) InstanceParameters() { mixin(MGPC("ScriptArray!(ParticleSystemComponent.ParticleSysParam)", 232)); }
			float ScalarValue() { mixin(MGPC("float", 248)); }
		}
		bool bOverrideScalar() { mixin(MGBPC(244, 0x1)); }
		bool bOverrideScalar(bool val) { mixin(MSBPC(244, 0x1)); }
	}
}
