module UnrealScript.Engine.SeqAct_ProjectileFactory;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_ActorFactory;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface SeqAct_ProjectileFactory : SeqAct_ActorFactory
{
	public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref ParticleSystem PSTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 316); }
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25834], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
