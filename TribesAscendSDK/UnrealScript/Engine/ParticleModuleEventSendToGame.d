module UnrealScript.Engine.ParticleModuleEventSendToGame;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ParticleModuleEventSendToGame : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleEventSendToGame")()); }
	private static __gshared ParticleModuleEventSendToGame mDefaultProperties;
	@property final static ParticleModuleEventSendToGame DefaultProperties() { mixin(MGDPC!(ParticleModuleEventSendToGame, "ParticleModuleEventSendToGame Engine.Default__ParticleModuleEventSendToGame")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDoEvent;
		public @property static final ScriptFunction DoEvent() { mixin(MGF!("mDoEvent", "Function Engine.ParticleModuleEventSendToGame.DoEvent")()); }
	}
	final void DoEvent(ref in Vector InCollideDirection, ref in Vector InHitLocation, ref in Vector InHitNormal, ref in ScriptName InBoneName)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = cast(Vector)InCollideDirection;
		*cast(Vector*)&params[12] = cast(Vector)InHitLocation;
		*cast(Vector*)&params[24] = cast(Vector)InHitNormal;
		*cast(ScriptName*)&params[36] = cast(ScriptName)InBoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoEvent, params.ptr, cast(void*)0);
	}
}
