module UnrealScript.UTGame.UTEmitter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Emitter;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface UTEmitter : Emitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTEmitter")); }
	private static __gshared UTEmitter mDefaultProperties;
	@property final static UTEmitter DefaultProperties() { mixin(MGDPC("UTEmitter", "UTEmitter UTGame.Default__UTEmitter")); }
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
			ScriptFunction GetTemplateForDistance() { mixin(MGF("mGetTemplateForDistance", "Function UTGame.UTEmitter.GetTemplateForDistance")); }
			ScriptFunction SetTemplate() { mixin(MGF("mSetTemplate", "Function UTGame.UTEmitter.SetTemplate")); }
			ScriptFunction SetLightEnvironment() { mixin(MGF("mSetLightEnvironment", "Function UTGame.UTEmitter.SetLightEnvironment")); }
		}
	}
final:
	static ParticleSystem GetTemplateForDistance(ref in ScriptArray!(UDKPawn.DistanceBasedParticleTemplate) TemplateList, Vector SpawnLocation, WorldInfo WI)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)*)params.ptr = cast(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate))TemplateList;
		*cast(Vector*)&params[12] = SpawnLocation;
		*cast(WorldInfo*)&params[24] = WI;
		StaticClass.ProcessEvent(Functions.GetTemplateForDistance, params.ptr, cast(void*)0);
		return *cast(ParticleSystem*)&params[28];
	}
	void SetTemplate(ParticleSystem NewTemplate, bool* bDestroyOnFinish = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = NewTemplate;
		if (bDestroyOnFinish !is null)
			*cast(bool*)&params[4] = *bDestroyOnFinish;
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
