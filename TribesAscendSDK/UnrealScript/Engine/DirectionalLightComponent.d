module UnrealScript.Engine.DirectionalLightComponent;

import ScriptClasses;
import UnrealScript.Engine.LightComponent;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface DirectionalLightComponent : LightComponent
{
	public @property final auto ref EngineTypes.LightmassDirectionalLightSettings LightmassSettings() { return *cast(EngineTypes.LightmassDirectionalLightSettings*)(cast(size_t)cast(void*)this + 448); }
	public @property final auto ref float CascadeDistributionExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 444); }
	public @property final auto ref int NumWholeSceneDynamicShadowCascades() { return *cast(int*)(cast(size_t)cast(void*)this + 440); }
	public @property final auto ref float WholeSceneDynamicShadowRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 436); }
	public @property final auto ref float TraceDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 432); }
	final void OnUpdatePropertyLightColor()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14489], cast(void*)0, cast(void*)0);
	}
	final void OnUpdatePropertyBrightness()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14490], cast(void*)0, cast(void*)0);
	}
}
