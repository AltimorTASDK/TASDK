module UnrealScript.UDKBase.UDKAnimBlendByFlying;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeAimOffset;
import UnrealScript.UDKBase.UDKAnimBlendBase;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface UDKAnimBlendByFlying : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKAnimBlendByFlying")); }
	private static __gshared UDKAnimBlendByFlying mDefaultProperties;
	@property final static UDKAnimBlendByFlying DefaultProperties() { mixin(MGDPC("UDKAnimBlendByFlying", "UDKAnimBlendByFlying UDKBase.Default__UDKAnimBlendByFlying")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mUpdateFlyingState;
		public @property static final ScriptFunction UpdateFlyingState() { mixin(MGF("mUpdateFlyingState", "Function UDKBase.UDKAnimBlendByFlying.UpdateFlyingState")); }
	}
	enum EFlyingState : ubyte
	{
		Flying_NotFlying = 0,
		Flying_OpeningWings = 1,
		Flying_Flying = 2,
		Flying_ClosingWings = 3,
		Flying_MAX = 4,
	}
	@property final
	{
		auto ref
		{
			ScriptName EndingAnimName() { mixin(MGPC("ScriptName", 324)); }
			ScriptName StartingAnimName() { mixin(MGPC("ScriptName", 312)); }
			AnimNodeAimOffset FlyingDir() { mixin(MGPC("AnimNodeAimOffset", 308)); }
			UDKAnimBlendBase FlyingMode() { mixin(MGPC("UDKAnimBlendBase", 304)); }
			// WARNING: Property 'Pawn' has the same name as a defined type!
			UDKAnimBlendByFlying.EFlyingState FlyingState() { mixin(MGPC("UDKAnimBlendByFlying.EFlyingState", 296)); }
		}
		bool bHasEndingAnim() { mixin(MGBPC(320, 0x2)); }
		bool bHasEndingAnim(bool val) { mixin(MSBPC(320, 0x2)); }
		bool bHasStartingAnim() { mixin(MGBPC(320, 0x1)); }
		bool bHasStartingAnim(bool val) { mixin(MSBPC(320, 0x1)); }
	}
	final void UpdateFlyingState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateFlyingState, cast(void*)0, cast(void*)0);
	}
}
