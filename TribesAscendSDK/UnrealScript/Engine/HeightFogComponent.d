module UnrealScript.Engine.HeightFogComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;

extern(C++) interface HeightFogComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.HeightFogComponent")()); }
	private static __gshared HeightFogComponent mDefaultProperties;
	@property final static HeightFogComponent DefaultProperties() { mixin(MGDPC!(HeightFogComponent, "HeightFogComponent Engine.Default__HeightFogComponent")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetEnabled;
		public @property static final ScriptFunction SetEnabled() { mixin(MGF!("mSetEnabled", "Function Engine.HeightFogComponent.SetEnabled")()); }
	}
	@property final
	{
		auto ref
		{
			float StartDistance() { mixin(MGPC!(float, 112)()); }
			float ExtinctionDistance() { mixin(MGPC!(float, 108)()); }
			UObject.Color LightColor() { mixin(MGPC!(UObject.Color, 104)()); }
			float LightBrightness() { mixin(MGPC!(float, 100)()); }
			float Density() { mixin(MGPC!(float, 96)()); }
			float Height() { mixin(MGPC!(float, 92)()); }
		}
		bool bEnabled() { mixin(MGBPC!(88, 0x1)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(88, 0x1)()); }
	}
	final void SetEnabled(bool bSetEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSetEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
}
