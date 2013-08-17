module UnrealScript.UTGame.UTBeamWeaponAttachment;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UTGame.UTWeaponAttachment;

extern(C++) interface UTBeamWeaponAttachment : UTWeaponAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTBeamWeaponAttachment")()); }
	private static __gshared UTBeamWeaponAttachment mDefaultProperties;
	@property final static UTBeamWeaponAttachment DefaultProperties() { mixin(MGDPC!(UTBeamWeaponAttachment, "UTBeamWeaponAttachment UTGame.Default__UTBeamWeaponAttachment")()); }
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
			ScriptFunction AddBeamEmitter() { mixin(MGF!("mAddBeamEmitter", "Function UTGame.UTBeamWeaponAttachment.AddBeamEmitter")()); }
			ScriptFunction HideEmitter() { mixin(MGF!("mHideEmitter", "Function UTGame.UTBeamWeaponAttachment.HideEmitter")()); }
			ScriptFunction UpdateBeam() { mixin(MGF!("mUpdateBeam", "Function UTGame.UTBeamWeaponAttachment.UpdateBeam")()); }
		}
	}
	static struct CurrentlyAttached
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTBeamWeaponAttachment.CurrentlyAttached")()); }
	}
	@property final auto ref
	{
		ScriptName EndPointParamName() { mixin(MGPC!("ScriptName", 740)()); }
		UTPawn PawnOwner() { mixin(MGPC!("UTPawn", 736)()); }
		ScriptName BeamSockets() { mixin(MGPC!("ScriptName", 720)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'BeamEmitter'!
		ParticleSystem BeamTemplate() { mixin(MGPC!("ParticleSystem", 704)()); }
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
