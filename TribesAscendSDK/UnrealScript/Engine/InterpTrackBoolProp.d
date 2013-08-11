module UnrealScript.Engine.InterpTrackBoolProp;

import ScriptClasses;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackBoolProp : InterpTrack
{
	struct BoolTrackKey
	{
		public @property final bool Value() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
		public @property final bool Value(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		private ubyte __Value[4];
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Time[4];
	}
	public @property final auto ref ScriptArray!(InterpTrackBoolProp.BoolTrackKey) BoolTrack() { return *cast(ScriptArray!(InterpTrackBoolProp.BoolTrackKey)*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 140); }
}
