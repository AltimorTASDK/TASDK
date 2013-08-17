module UnrealScript.TribesGame.TrGame_TrCTFBlitz;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrCTFBase_BloodEagle;
import UnrealScript.Engine.Controller;
import UnrealScript.TribesGame.TrCTFBase;
import UnrealScript.TribesGame.TrFlagBase;
import UnrealScript.TribesGame.TrGame_TRCTF;
import UnrealScript.TribesGame.TrCTFBase_DiamondSword;

extern(C++) interface TrGame_TrCTFBlitz : TrGame_TRCTF
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGame_TrCTFBlitz")()); }
	private static __gshared TrGame_TrCTFBlitz mDefaultProperties;
	@property final static TrGame_TrCTFBlitz DefaultProperties() { mixin(MGDPC!(TrGame_TrCTFBlitz, "TrGame_TrCTFBlitz TribesGame.Default__TrGame_TrCTFBlitz")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mApplyServerSettings;
			ScriptFunction mRegisterFlagBase;
			ScriptFunction mScoreFlag;
			ScriptFunction mRotateFlag;
		}
		public @property static final
		{
			ScriptFunction ApplyServerSettings() { mixin(MGF!("mApplyServerSettings", "Function TribesGame.TrGame_TrCTFBlitz.ApplyServerSettings")()); }
			ScriptFunction RegisterFlagBase() { mixin(MGF!("mRegisterFlagBase", "Function TribesGame.TrGame_TrCTFBlitz.RegisterFlagBase")()); }
			ScriptFunction ScoreFlag() { mixin(MGF!("mScoreFlag", "Function TribesGame.TrGame_TrCTFBlitz.ScoreFlag")()); }
			ScriptFunction RotateFlag() { mixin(MGF!("mRotateFlag", "Function TribesGame.TrGame_TrCTFBlitz.RotateFlag")()); }
		}
	}
	@property final
	{
		auto ref
		{
			TrCTFBase_DiamondSword DiamondSwordFlagStands() { mixin(MGPC!(TrCTFBase_DiamondSword, 1488)()); }
			TrCTFBase_BloodEagle BloodEagleFlagStands() { mixin(MGPC!(TrCTFBase_BloodEagle, 1468)()); }
		}
		bool m_bRotateBothFlagsOnCapture() { mixin(MGBPC!(1508, 0x1)()); }
		bool m_bRotateBothFlagsOnCapture(bool val) { mixin(MSBPC!(1508, 0x1)()); }
	}
final:
	void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyServerSettings, cast(void*)0, cast(void*)0);
	}
	void RegisterFlagBase(TrCTFBase FlagBase)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrCTFBase*)params.ptr = FlagBase;
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterFlagBase, params.ptr, cast(void*)0);
	}
	void ScoreFlag(Controller Scorer, TrFlagBase theFlag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Scorer;
		*cast(TrFlagBase*)&params[4] = theFlag;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScoreFlag, params.ptr, cast(void*)0);
	}
	void RotateFlag(TrFlagBase theFlag)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrFlagBase*)params.ptr = theFlag;
		(cast(ScriptObject)this).ProcessEvent(Functions.RotateFlag, params.ptr, cast(void*)0);
	}
}
