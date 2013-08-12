module UnrealScript.Engine.ParticleEventManager;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleModuleEventSendToGame;

extern(C++) interface ParticleEventManager : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleEventManager")); }
	private static __gshared ParticleEventManager mDefaultProperties;
	@property final static ParticleEventManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleEventManager)("ParticleEventManager Engine.Default__ParticleEventManager")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mHandleParticleModuleEventSendToGame;
		public @property static final ScriptFunction HandleParticleModuleEventSendToGame() { return mHandleParticleModuleEventSendToGame ? mHandleParticleModuleEventSendToGame : (mHandleParticleModuleEventSendToGame = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleEventManager.HandleParticleModuleEventSendToGame")); }
	}
	final void HandleParticleModuleEventSendToGame(ParticleModuleEventSendToGame InEvent, Vector* InCollideDirection, Vector* InHitLocation, Vector* InHitNormal, ScriptName* InBoneName)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ParticleModuleEventSendToGame*)params.ptr = InEvent;
		*cast(Vector*)&params[4] = *InCollideDirection;
		*cast(Vector*)&params[16] = *InHitLocation;
		*cast(Vector*)&params[28] = *InHitNormal;
		*cast(ScriptName*)&params[40] = *InBoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleParticleModuleEventSendToGame, params.ptr, cast(void*)0);
		*InCollideDirection = *cast(Vector*)&params[4];
		*InHitLocation = *cast(Vector*)&params[16];
		*InHitNormal = *cast(Vector*)&params[28];
		*InBoneName = *cast(ScriptName*)&params[40];
	}
}
