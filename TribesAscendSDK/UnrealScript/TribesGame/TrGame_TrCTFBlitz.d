module UnrealScript.TribesGame.TrGame_TrCTFBlitz;

import ScriptClasses;
import UnrealScript.TribesGame.TrCTFBase_BloodEagle;
import UnrealScript.Engine.Controller;
import UnrealScript.TribesGame.TrCTFBase;
import UnrealScript.TribesGame.TrFlagBase;
import UnrealScript.TribesGame.TrGame_TRCTF;
import UnrealScript.TribesGame.TrCTFBase_DiamondSword;

extern(C++) interface TrGame_TrCTFBlitz : TrGame_TRCTF
{
	public @property final bool m_bRotateBothFlagsOnCapture() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1508) & 0x1) != 0; }
	public @property final bool m_bRotateBothFlagsOnCapture(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1508) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1508) &= ~0x1; } return val; }
	public @property final auto ref TrCTFBase_DiamondSword DiamondSwordFlagStands() { return *cast(TrCTFBase_DiamondSword*)(cast(size_t)cast(void*)this + 1488); }
	public @property final auto ref TrCTFBase_BloodEagle BloodEagleFlagStands() { return *cast(TrCTFBase_BloodEagle*)(cast(size_t)cast(void*)this + 1468); }
	final void ApplyServerSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90692], cast(void*)0, cast(void*)0);
	}
	final void RegisterFlagBase(TrCTFBase FlagBase)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrCTFBase*)params.ptr = FlagBase;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90695], params.ptr, cast(void*)0);
	}
	final void ScoreFlag(Controller Scorer, TrFlagBase theFlag)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Scorer;
		*cast(TrFlagBase*)&params[4] = theFlag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90697], params.ptr, cast(void*)0);
	}
	final void RotateFlag(TrFlagBase theFlag)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrFlagBase*)params.ptr = theFlag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[90700], params.ptr, cast(void*)0);
	}
}
