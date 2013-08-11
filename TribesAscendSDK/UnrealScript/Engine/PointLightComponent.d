module UnrealScript.Engine.PointLightComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.LightComponent;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface PointLightComponent : LightComponent
{
	public @property final auto ref EngineTypes.LightmassPointLightSettings LightmassSettings() { return *cast(EngineTypes.LightmassPointLightSettings*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref UObject.Plane ShadowPlane() { return *cast(UObject.Plane*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref Vector Translation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref UObject.Matrix CachedParentToWorld() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 464); }
	public @property final auto ref float MinShadowFalloffRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 448); }
	public @property final auto ref float ShadowFalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 444); }
	public @property final auto ref float FalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 440); }
	public @property final auto ref float Radius() { return *cast(float*)(cast(size_t)cast(void*)this + 436); }
	public @property final auto ref float ShadowRadiusMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 432); }
	final void SetTranslation(Vector NewTranslation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewTranslation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14634], params.ptr, cast(void*)0);
	}
	final void OnUpdatePropertyLightColor()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14636], cast(void*)0, cast(void*)0);
	}
	final void OnUpdatePropertyBrightness()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14637], cast(void*)0, cast(void*)0);
	}
}
