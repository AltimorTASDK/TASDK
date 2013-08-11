module UnrealScript.GameFramework.SeqAct_ModifyProperty;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ModifyProperty : SequenceAction
{
	struct PropertyInfo
	{
		public @property final auto ref ScriptString PropertyValue() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __PropertyValue[12];
		public @property final bool bModifyProperty() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
		public @property final bool bModifyProperty(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		private ubyte __bModifyProperty[4];
		public @property final auto ref ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __PropertyName[8];
	}
	public @property final auto ref ScriptArray!(SeqAct_ModifyProperty.PropertyInfo) Properties() { return *cast(ScriptArray!(SeqAct_ModifyProperty.PropertyInfo)*)(cast(size_t)cast(void*)this + 232); }
}
