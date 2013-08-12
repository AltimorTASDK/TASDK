module UnrealScript.Engine.ParticleModuleEventSendToGame;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ParticleModuleEventSendToGame : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleEventSendToGame")); }
	private static __gshared ParticleModuleEventSendToGame mDefaultProperties;
	@property final static ParticleModuleEventSendToGame DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleEventSendToGame)("ParticleModuleEventSendToGame Engine.Default__ParticleModuleEventSendToGame")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDoEvent;
		public @property static final ScriptFunction DoEvent() { return mDoEvent ? mDoEvent : (mDoEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.ParticleModuleEventSendToGame.DoEvent")); }
	}
	final void DoEvent(Vector* InCollideDirection, Vector* InHitLocation, Vector* InHitNormal, ScriptName* InBoneName)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = *InCollideDirection;
		*cast(Vector*)&params[12] = *InHitLocation;
		*cast(Vector*)&params[24] = *InHitNormal;
		*cast(ScriptName*)&params[36] = *InBoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoEvent, params.ptr, cast(void*)0);
		*InCollideDirection = *cast(Vector*)params.ptr;
		*InHitLocation = *cast(Vector*)&params[12];
		*InHitNormal = *cast(Vector*)&params[24];
		*InBoneName = *cast(ScriptName*)&params[36];
	}
}
