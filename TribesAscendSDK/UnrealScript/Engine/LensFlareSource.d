module UnrealScript.Engine.LensFlareSource;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LensFlare;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface LensFlareSource : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.LensFlareSource")); }
	private static __gshared LensFlareSource mDefaultProperties;
	@property final static LensFlareSource DefaultProperties() { mixin(MGDPC("LensFlareSource", "LensFlareSource Engine.Default__LensFlareSource")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetTemplate;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mOnToggle;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mSetFloatParameter;
			ScriptFunction mSetVectorParameter;
			ScriptFunction mSetColorParameter;
			ScriptFunction mSetExtColorParameter;
			ScriptFunction mSetActorParameter;
		}
		public @property static final
		{
			ScriptFunction SetTemplate() { mixin(MGF("mSetTemplate", "Function Engine.LensFlareSource.SetTemplate")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function Engine.LensFlareSource.PostBeginPlay")); }
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.LensFlareSource.OnToggle")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function Engine.LensFlareSource.ReplicatedEvent")); }
			ScriptFunction SetFloatParameter() { mixin(MGF("mSetFloatParameter", "Function Engine.LensFlareSource.SetFloatParameter")); }
			ScriptFunction SetVectorParameter() { mixin(MGF("mSetVectorParameter", "Function Engine.LensFlareSource.SetVectorParameter")); }
			ScriptFunction SetColorParameter() { mixin(MGF("mSetColorParameter", "Function Engine.LensFlareSource.SetColorParameter")); }
			ScriptFunction SetExtColorParameter() { mixin(MGF("mSetExtColorParameter", "Function Engine.LensFlareSource.SetExtColorParameter")); }
			ScriptFunction SetActorParameter() { mixin(MGF("mSetActorParameter", "Function Engine.LensFlareSource.SetActorParameter")); }
		}
	}
	@property final
	{
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LensFlareComp'!
		bool bCurrentlyActive() { mixin(MGBPC(480, 0x1)); }
		bool bCurrentlyActive(bool val) { mixin(MSBPC(480, 0x1)); }
	}
final:
	void SetTemplate(LensFlare NewTemplate)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LensFlare*)params.ptr = NewTemplate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTemplate, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void SetFloatParameter(ScriptName ParameterName, float Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFloatParameter, params.ptr, cast(void*)0);
	}
	void SetVectorParameter(ScriptName ParameterName, Vector Param)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Vector*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVectorParameter, params.ptr, cast(void*)0);
	}
	void SetColorParameter(ScriptName ParameterName, UObject.LinearColor Param)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(UObject.LinearColor*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetColorParameter, params.ptr, cast(void*)0);
	}
	void SetExtColorParameter(ScriptName ParameterName, float Red, float Green, float Blue, float Alpha)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(float*)&params[8] = Red;
		*cast(float*)&params[12] = Green;
		*cast(float*)&params[16] = Blue;
		*cast(float*)&params[20] = Alpha;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetExtColorParameter, params.ptr, cast(void*)0);
	}
	void SetActorParameter(ScriptName ParameterName, Actor Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ParameterName;
		*cast(Actor*)&params[8] = Param;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActorParameter, params.ptr, cast(void*)0);
	}
}
