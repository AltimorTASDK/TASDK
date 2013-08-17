module UnrealScript.UDKBase.UDKParticleSystemComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleSystemComponent;

extern(C++) interface UDKParticleSystemComponent : ParticleSystemComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKParticleSystemComponent")); }
	private static __gshared UDKParticleSystemComponent mDefaultProperties;
	@property final static UDKParticleSystemComponent DefaultProperties() { mixin(MGDPC("UDKParticleSystemComponent", "UDKParticleSystemComponent UDKBase.Default__UDKParticleSystemComponent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetFOV;
		public @property static final ScriptFunction SetFOV() { mixin(MGF("mSetFOV", "Function UDKBase.UDKParticleSystemComponent.SetFOV")); }
	}
	@property final
	{
		auto ref
		{
			Vector SavedScale3D() { mixin(MGPC("Vector", 744)); }
			float FOV() { mixin(MGPC("float", 736)); }
		}
		bool bHasSavedScale3D() { mixin(MGBPC(740, 0x1)); }
		bool bHasSavedScale3D(bool val) { mixin(MSBPC(740, 0x1)); }
	}
	final void SetFOV(float NewFOV)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewFOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFOV, params.ptr, cast(void*)0);
	}
}
