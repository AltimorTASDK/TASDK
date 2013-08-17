module UnrealScript.Engine.ParticleEventManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleModuleEventSendToGame;

extern(C++) interface ParticleEventManager : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleEventManager")); }
	private static __gshared ParticleEventManager mDefaultProperties;
	@property final static ParticleEventManager DefaultProperties() { mixin(MGDPC("ParticleEventManager", "ParticleEventManager Engine.Default__ParticleEventManager")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mHandleParticleModuleEventSendToGame;
		public @property static final ScriptFunction HandleParticleModuleEventSendToGame() { mixin(MGF("mHandleParticleModuleEventSendToGame", "Function Engine.ParticleEventManager.HandleParticleModuleEventSendToGame")); }
	}
	final void HandleParticleModuleEventSendToGame(ParticleModuleEventSendToGame InEvent, ref in Vector InCollideDirection, ref in Vector InHitLocation, ref in Vector InHitNormal, ref in ScriptName InBoneName)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ParticleModuleEventSendToGame*)params.ptr = InEvent;
		*cast(Vector*)&params[4] = cast(Vector)InCollideDirection;
		*cast(Vector*)&params[16] = cast(Vector)InHitLocation;
		*cast(Vector*)&params[28] = cast(Vector)InHitNormal;
		*cast(ScriptName*)&params[40] = cast(ScriptName)InBoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleParticleModuleEventSendToGame, params.ptr, cast(void*)0);
	}
}
