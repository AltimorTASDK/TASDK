module UnrealScript.UTGame.UTBeamWeaponAttachment;

import ScriptClasses;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UTGame.UTWeaponAttachment;

extern(C++) interface UTBeamWeaponAttachment : UTWeaponAttachment
{
	public @property final auto ref ScriptName EndPointParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 740); }
	public @property final auto ref UTPawn PawnOwner() { return *cast(UTPawn*)(cast(size_t)cast(void*)this + 736); }
	public @property final auto ref ScriptName BeamSockets() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 720); }
	public @property final auto ref ParticleSystem BeamTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 704); }
	final void AddBeamEmitter()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42416], cast(void*)0, cast(void*)0);
	}
	final void HideEmitter(int Index, bool bHide)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = bHide;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42418], params.ptr, cast(void*)0);
	}
	final void UpdateBeam(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[42421], params.ptr, cast(void*)0);
	}
}
