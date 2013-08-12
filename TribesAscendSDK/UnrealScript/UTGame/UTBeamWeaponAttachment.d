module UnrealScript.UTGame.UTBeamWeaponAttachment;

import ScriptClasses;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UTGame.UTWeaponAttachment;

extern(C++) interface UTBeamWeaponAttachment : UTWeaponAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTBeamWeaponAttachment")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddBeamEmitter;
			ScriptFunction mHideEmitter;
			ScriptFunction mUpdateBeam;
		}
		public @property static final
		{
			ScriptFunction AddBeamEmitter() { return mAddBeamEmitter ? mAddBeamEmitter : (mAddBeamEmitter = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBeamWeaponAttachment.AddBeamEmitter")); }
			ScriptFunction HideEmitter() { return mHideEmitter ? mHideEmitter : (mHideEmitter = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBeamWeaponAttachment.HideEmitter")); }
			ScriptFunction UpdateBeam() { return mUpdateBeam ? mUpdateBeam : (mUpdateBeam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTBeamWeaponAttachment.UpdateBeam")); }
		}
	}
	@property final auto ref
	{
		ScriptName EndPointParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 740); }
		UTPawn PawnOwner() { return *cast(UTPawn*)(cast(size_t)cast(void*)this + 736); }
		ScriptName BeamSockets() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 720); }
		ParticleSystem BeamTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 704); }
	}
final:
	void AddBeamEmitter()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddBeamEmitter, cast(void*)0, cast(void*)0);
	}
	void HideEmitter(int Index, bool bHide)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(bool*)&params[4] = bHide;
		(cast(ScriptObject)this).ProcessEvent(Functions.HideEmitter, params.ptr, cast(void*)0);
	}
	void UpdateBeam(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateBeam, params.ptr, cast(void*)0);
	}
}
