module UnrealScript.Engine.PointLightComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.LightComponent;
import UnrealScript.Engine.EngineTypes;

extern(C++) interface PointLightComponent : LightComponent
{
public extern(D):
	@property final auto ref
	{
		EngineTypes.LightmassPointLightSettings LightmassSettings() { return *cast(EngineTypes.LightmassPointLightSettings*)(cast(size_t)cast(void*)this + 564); }
		UObject.Plane ShadowPlane() { return *cast(UObject.Plane*)(cast(size_t)cast(void*)this + 544); }
		Vector Translation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 528); }
		UObject.Matrix CachedParentToWorld() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 464); }
		float MinShadowFalloffRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 448); }
		float ShadowFalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 444); }
		float FalloffExponent() { return *cast(float*)(cast(size_t)cast(void*)this + 440); }
		float Radius() { return *cast(float*)(cast(size_t)cast(void*)this + 436); }
		float ShadowRadiusMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 432); }
	}
final:
	void SetTranslation(Vector NewTranslation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewTranslation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14634], params.ptr, cast(void*)0);
	}
	void OnUpdatePropertyLightColor()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14636], cast(void*)0, cast(void*)0);
	}
	void OnUpdatePropertyBrightness()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14637], cast(void*)0, cast(void*)0);
	}
}
