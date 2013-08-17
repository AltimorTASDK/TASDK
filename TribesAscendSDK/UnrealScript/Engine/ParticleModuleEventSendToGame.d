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
	final void DoEvent(ref const Vector InCollideDirection, ref const Vector InHitLocation, ref const Vector InHitNormal, ref const ScriptName InBoneName)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = InCollideDirection;
		*cast(Vector*)&params[12] = InHitLocation;
		*cast(Vector*)&params[24] = InHitNormal;
		*cast(ScriptName*)&params[36] = InBoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoEvent, params.ptr, cast(void*)0);
		*InCollideDirection = *cast(Vector*)params.ptr;
		*InHitLocation = *cast(Vector*)&params[12];
		*InHitNormal = *cast(Vector*)&params[24];
		*InBoneName = *cast(ScriptName*)&params[36];
	}
}
