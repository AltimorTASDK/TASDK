module UnrealScript.Engine.ExponentialHeightFogComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;

extern(C++) interface ExponentialHeightFogComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ExponentialHeightFogComponent")); }
	private static __gshared ExponentialHeightFogComponent mDefaultProperties;
	@property final static ExponentialHeightFogComponent DefaultProperties() { mixin(MGDPC("ExponentialHeightFogComponent", "ExponentialHeightFogComponent Engine.Default__ExponentialHeightFogComponent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetEnabled;
		public @property static final ScriptFunction SetEnabled() { mixin(MGF("mSetEnabled", "Function Engine.ExponentialHeightFogComponent.SetEnabled")); }
	}
	@property final
	{
		auto ref
		{
			UObject.Color LightInscatteringColor() { mixin(MGPC("UObject.Color", 128)); }
			float LightInscatteringBrightness() { mixin(MGPC("float", 124)); }
			UObject.Color OppositeLightColor() { mixin(MGPC("UObject.Color", 120)); }
			float OppositeLightBrightness() { mixin(MGPC("float", 116)); }
			float LightTerminatorAngle() { mixin(MGPC("float", 112)); }
			float StartDistance() { mixin(MGPC("float", 108)); }
			float FogMaxOpacity() { mixin(MGPC("float", 104)); }
			float FogHeightFalloff() { mixin(MGPC("float", 100)); }
			float FogDensity() { mixin(MGPC("float", 96)); }
			float FogHeight() { mixin(MGPC("float", 92)); }
		}
		bool bEnabled() { mixin(MGBPC(88, 0x1)); }
		bool bEnabled(bool val) { mixin(MSBPC(88, 0x1)); }
	}
	final void SetEnabled(bool bSetEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSetEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
}
