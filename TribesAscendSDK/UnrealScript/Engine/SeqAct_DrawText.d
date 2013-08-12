module UnrealScript.Engine.SeqAct_DrawText;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.Engine.HUD;

extern(C++) interface SeqAct_DrawText : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_DrawText")); }
	private static __gshared SeqAct_DrawText mDefaultProperties;
	@property final static SeqAct_DrawText DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_DrawText)("SeqAct_DrawText Engine.Default__SeqAct_DrawText")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_DrawText.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			HUD.KismetDrawTextInfo DrawTextInfo() { return *cast(HUD.KismetDrawTextInfo*)(cast(size_t)cast(void*)this + 240); }
			float DisplayTimeSeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
		}
		bool bDisplayOnObject() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bDisplayOnObject(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
