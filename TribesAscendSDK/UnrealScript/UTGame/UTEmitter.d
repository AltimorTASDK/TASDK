module UnrealScript.UTGame.UTEmitter;

import ScriptClasses;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Emitter;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface UTEmitter : Emitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTEmitter")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetTemplateForDistance;
			ScriptFunction mSetTemplate;
			ScriptFunction mSetLightEnvironment;
		}
		public @property static final
		{
			ScriptFunction GetTemplateForDistance() { return mGetTemplateForDistance ? mGetTemplateForDistance : (mGetTemplateForDistance = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTEmitter.GetTemplateForDistance")); }
			ScriptFunction SetTemplate() { return mSetTemplate ? mSetTemplate : (mSetTemplate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTEmitter.SetTemplate")); }
			ScriptFunction SetLightEnvironment() { return mSetLightEnvironment ? mSetLightEnvironment : (mSetLightEnvironment = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTEmitter.SetLightEnvironment")); }
		}
	}
final:
	static ParticleSystem GetTemplateForDistance(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)* TemplateList, Vector SpawnLocation, WorldInfo WI)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)*)params.ptr = *TemplateList;
		*cast(Vector*)&params[12] = SpawnLocation;
		*cast(WorldInfo*)&params[24] = WI;
		StaticClass.ProcessEvent(Functions.GetTemplateForDistance, params.ptr, cast(void*)0);
		*TemplateList = *cast(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)*)params.ptr;
		return *cast(ParticleSystem*)&params[28];
	}
	void SetTemplate(ParticleSystem NewTemplate, bool bDestroyOnFinish)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = NewTemplate;
		*cast(bool*)&params[4] = bDestroyOnFinish;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTemplate, params.ptr, cast(void*)0);
	}
	void SetLightEnvironment(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* pLight)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = pLight;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLightEnvironment, params.ptr, cast(void*)0);
	}
}
