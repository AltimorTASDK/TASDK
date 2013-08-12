module UnrealScript.Engine.SeqAct_SetParticleSysParam;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystemComponent;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetParticleSysParam : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetParticleSysParam")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(ParticleSystemComponent.ParticleSysParam) InstanceParameters() { return *cast(ScriptArray!(ParticleSystemComponent.ParticleSysParam)*)(cast(size_t)cast(void*)this + 232); }
			float ScalarValue() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		}
		bool bOverrideScalar() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
		bool bOverrideScalar(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	}
}
