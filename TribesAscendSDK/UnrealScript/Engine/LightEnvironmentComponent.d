module UnrealScript.Engine.LightEnvironmentComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorComponent;

extern(C++) interface LightEnvironmentComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LightEnvironmentComponent")()); }
	private static __gshared LightEnvironmentComponent mDefaultProperties;
	@property final static LightEnvironmentComponent DefaultProperties() { mixin(MGDPC!(LightEnvironmentComponent, "LightEnvironmentComponent Engine.Default__LightEnvironmentComponent")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetEnabled;
			ScriptFunction mIsEnabled;
		}
		public @property static final
		{
			ScriptFunction SetEnabled() { mixin(MGF!("mSetEnabled", "Function Engine.LightEnvironmentComponent.SetEnabled")()); }
			ScriptFunction IsEnabled() { mixin(MGF!("mIsEnabled", "Function Engine.LightEnvironmentComponent.IsEnabled")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) AffectedComponents() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*), 100)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'AffectingDominantLight'!
			float DominantShadowFactor() { mixin(MGPC!(float, 92)()); }
		}
		bool bTranslucencyShadowed() { mixin(MGBPC!(88, 0x10)()); }
		bool bTranslucencyShadowed(bool val) { mixin(MSBPC!(88, 0x10)()); }
		bool bAllowPreShadow() { mixin(MGBPC!(88, 0x8)()); }
		bool bAllowPreShadow(bool val) { mixin(MSBPC!(88, 0x8)()); }
		bool bAllowDynamicShadowsOnTranslucency() { mixin(MGBPC!(88, 0x4)()); }
		bool bAllowDynamicShadowsOnTranslucency(bool val) { mixin(MSBPC!(88, 0x4)()); }
		bool bForceNonCompositeDynamicLights() { mixin(MGBPC!(88, 0x2)()); }
		bool bForceNonCompositeDynamicLights(bool val) { mixin(MSBPC!(88, 0x2)()); }
		bool bEnabled() { mixin(MGBPC!(88, 0x1)()); }
		bool bEnabled(bool val) { mixin(MSBPC!(88, 0x1)()); }
	}
final:
	void SetEnabled(bool bNewEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
	bool IsEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsEnabled, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
