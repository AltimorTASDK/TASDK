module UnrealScript.Engine.FogVolumeDensityComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface FogVolumeDensityComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FogVolumeDensityComponent")); }
	private static __gshared FogVolumeDensityComponent mDefaultProperties;
	@property final static FogVolumeDensityComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FogVolumeDensityComponent)("FogVolumeDensityComponent Engine.Default__FogVolumeDensityComponent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetEnabled;
		public @property static final ScriptFunction SetEnabled() { return mSetEnabled ? mSetEnabled : (mSetEnabled = ScriptObject.Find!(ScriptFunction)("Function Engine.FogVolumeDensityComponent.SetEnabled")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor) FogVolumeActors() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 136); }
			float StartDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			UObject.LinearColor ApproxFogLightColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 116); }
			UObject.LinearColor SimpleLightColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 100); }
			MaterialInterface DefaultFogVolumeMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 92); }
			MaterialInterface FogMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 88); }
		}
		bool bOnlyAffectsTranslucency() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x4) != 0; }
		bool bOnlyAffectsTranslucency(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x4; } return val; }
		bool bAffectsTranslucency() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x2) != 0; }
		bool bAffectsTranslucency(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x2; } return val; }
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	}
	final void SetEnabled(bool bSetEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSetEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
}
