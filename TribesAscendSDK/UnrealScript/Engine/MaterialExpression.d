module UnrealScript.Engine.MaterialExpression;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionCompound;

extern(C++) interface MaterialExpression : UObject
{
	struct ExpressionInput
	{
		public @property final auto ref int GCC64_Padding() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __GCC64_Padding[4];
		public @property final auto ref int MaskA() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __MaskA[4];
		public @property final auto ref int MaskB() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __MaskB[4];
		public @property final auto ref int MaskG() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __MaskG[4];
		public @property final auto ref int MaskR() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __MaskR[4];
		public @property final auto ref int Mask() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Mask[4];
		public @property final auto ref MaterialExpression Expression() { return *cast(MaterialExpression*)(cast(size_t)&this + 0); }
		private ubyte __Expression[4];
	}
	public @property final auto ref ScriptArray!(ScriptName) MenuCategories() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptString Desc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref MaterialExpressionCompound Compound() { return *cast(MaterialExpressionCompound*)(cast(size_t)cast(void*)this + 80); }
	public @property final bool bUsedByStaticParameterSet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x20) != 0; }
	public @property final bool bUsedByStaticParameterSet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x20; } return val; }
	public @property final bool bHidePreviewWindow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x10) != 0; }
	public @property final bool bHidePreviewWindow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x10; } return val; }
	public @property final bool bShowOutputNameOnPin() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x8) != 0; }
	public @property final bool bShowOutputNameOnPin(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x8; } return val; }
	public @property final bool bIsParameterExpression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x4) != 0; }
	public @property final bool bIsParameterExpression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x4; } return val; }
	public @property final bool bNeedToUpdatePreview() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
	public @property final bool bNeedToUpdatePreview(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
	public @property final bool bRealtimePreview() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
	public @property final bool bRealtimePreview(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	public @property final auto ref int MaterialExpressionEditorY() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref int MaterialExpressionEditorX() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref int EditorY() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int EditorX() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
}
