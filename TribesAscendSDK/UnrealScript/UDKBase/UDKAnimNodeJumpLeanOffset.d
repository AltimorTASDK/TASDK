module UnrealScript.UDKBase.UDKAnimNodeJumpLeanOffset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeAimOffset;
import UnrealScript.Core.UObject;

extern(C++) interface UDKAnimNodeJumpLeanOffset : AnimNodeAimOffset
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKAnimNodeJumpLeanOffset")()); }
	private static __gshared UDKAnimNodeJumpLeanOffset mDefaultProperties;
	@property final static UDKAnimNodeJumpLeanOffset DefaultProperties() { mixin(MGDPC!(UDKAnimNodeJumpLeanOffset, "UDKAnimNodeJumpLeanOffset UDKBase.Default__UDKAnimNodeJumpLeanOffset")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetLeanWeight;
		public @property static final ScriptFunction SetLeanWeight() { mixin(MGF!("mSetLeanWeight", "Function UDKBase.UDKAnimNodeJumpLeanOffset.SetLeanWeight")()); }
	}
	@property final
	{
		auto ref
		{
			float BlendTimeToGo() { mixin(MGPC!("float", 356)()); }
			float LeanWeightTarget() { mixin(MGPC!("float", 352)()); }
			float LeanWeight() { mixin(MGPC!("float", 348)()); }
			UObject.Vector2D PreBlendAim() { mixin(MGPC!("UObject.Vector2D", 340)()); }
			ScriptName OldAimProfileName() { mixin(MGPC!("ScriptName", 332)()); }
			AnimNodeAimOffset CachedAimNode() { mixin(MGPC!("AnimNodeAimOffset", 328)()); }
			float MaxLeanChangeSpeed() { mixin(MGPC!("float", 320)()); }
			float JumpLeanStrength() { mixin(MGPC!("float", 316)()); }
		}
		bool bOldDoubleJumping() { mixin(MGBPC!(324, 0x10)()); }
		bool bOldDoubleJumping(bool val) { mixin(MSBPC!(324, 0x10)()); }
		bool bDoubleJumping() { mixin(MGBPC!(324, 0x8)()); }
		bool bDoubleJumping(bool val) { mixin(MSBPC!(324, 0x8)()); }
		bool bOldDodging() { mixin(MGBPC!(324, 0x4)()); }
		bool bOldDodging(bool val) { mixin(MSBPC!(324, 0x4)()); }
		bool bDodging() { mixin(MGBPC!(324, 0x2)()); }
		bool bDodging(bool val) { mixin(MSBPC!(324, 0x2)()); }
		bool bMultiplyByZVelocity() { mixin(MGBPC!(324, 0x1)()); }
		bool bMultiplyByZVelocity(bool val) { mixin(MSBPC!(324, 0x1)()); }
	}
	final void SetLeanWeight(float WeightTarget, float BlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = WeightTarget;
		*cast(float*)&params[4] = BlendTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLeanWeight, params.ptr, cast(void*)0);
	}
}
