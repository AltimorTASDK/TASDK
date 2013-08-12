module UnrealScript.Engine.LensFlareSource;

import ScriptClasses;
import UnrealScript.Engine.LensFlare;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface LensFlareSource : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LensFlareSource")); }
	private static __gshared LensFlareSource mDefaultProperties;
	@property final static LensFlareSource DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LensFlareSource)("LensFlareSource Engine.Default__LensFlareSource")); }
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
			ScriptFunction SetTemplate() { return mSetTemplate ? mSetTemplate : (mSetTemplate = ScriptObject.Find!(ScriptFunction)("Function Engine.LensFlareSource.SetTemplate")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.LensFlareSource.PostBeginPlay")); }
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.LensFlareSource.OnToggle")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.LensFlareSource.ReplicatedEvent")); }
			ScriptFunction SetFloatParameter() { return mSetFloatParameter ? mSetFloatParameter : (mSetFloatParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.LensFlareSource.SetFloatParameter")); }
			ScriptFunction SetVectorParameter() { return mSetVectorParameter ? mSetVectorParameter : (mSetVectorParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.LensFlareSource.SetVectorParameter")); }
			ScriptFunction SetColorParameter() { return mSetColorParameter ? mSetColorParameter : (mSetColorParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.LensFlareSource.SetColorParameter")); }
			ScriptFunction SetExtColorParameter() { return mSetExtColorParameter ? mSetExtColorParameter : (mSetExtColorParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.LensFlareSource.SetExtColorParameter")); }
			ScriptFunction SetActorParameter() { return mSetActorParameter ? mSetActorParameter : (mSetActorParameter = ScriptObject.Find!(ScriptFunction)("Function Engine.LensFlareSource.SetActorParameter")); }
		}
	}
	@property final
	{
		bool bCurrentlyActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bCurrentlyActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
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
