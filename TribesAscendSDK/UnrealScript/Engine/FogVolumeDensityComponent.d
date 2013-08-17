module UnrealScript.Engine.FogVolumeDensityComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface FogVolumeDensityComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.FogVolumeDensityComponent")()); }
	private static __gshared FogVolumeDensityComponent mDefaultProperties;
	@property final static FogVolumeDensityComponent DefaultProperties() { mixin(MGDPC!(FogVolumeDensityComponent, "FogVolumeDensityComponent Engine.Default__FogVolumeDensityComponent")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetEnabled;
		public @property static final ScriptFunction SetEnabled() { mixin(MGF!("mSetEnabled", "Function Engine.FogVolumeDensityComponent.SetEnabled")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor) FogVolumeActors() { mixin(MGPC!("ScriptArray!(Actor)", 136)()); }
			float StartDistance() { mixin(MGPC!("float", 132)()); }
			UObject.LinearColor ApproxFogLightColor() { mixin(MGPC!("UObject.LinearColor", 116)()); }
			UObject.LinearColor SimpleLightColor() { mixin(MGPC!("UObject.LinearColor", 100)()); }
			MaterialInterface DefaultFogVolumeMaterial() { mixin(MGPC!("MaterialInterface", 92)()); }
			MaterialInterface FogMaterial() { mixin(MGPC!("MaterialInterface", 88)()); }
		}
		bool bOnlyAffectsTranslucency() { mixin(MGBPC!(96, 0x4)()); }
		bool bOnlyAffectsTranslucency(bool val) { mixin(MSBPC!(96, 0x4)()); }
		bool bAffectsTranslucency() { mixin(MGBPC!(96, 0x2)()); }
		bool bAffectsTranslucency(bool val) { mixin(MSBPC!(96, 0x2)()); }
		bool bEnabled() { mixin(MGBPC!(96, 0x1)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(96, 0x1)()); }
	}
	final void SetEnabled(bool bSetEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSetEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
}
