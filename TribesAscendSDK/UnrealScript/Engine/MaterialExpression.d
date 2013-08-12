module UnrealScript.Engine.MaterialExpression;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionCompound;

extern(C++) interface MaterialExpression : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpression")); }
	struct ExpressionInput
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.MaterialExpression.ExpressionInput")); }
		@property final auto ref
		{
			int GCC64_Padding() { return *cast(int*)(cast(size_t)&this + 24); }
			int MaskA() { return *cast(int*)(cast(size_t)&this + 20); }
			int MaskB() { return *cast(int*)(cast(size_t)&this + 16); }
			int MaskG() { return *cast(int*)(cast(size_t)&this + 12); }
			int MaskR() { return *cast(int*)(cast(size_t)&this + 8); }
			int Mask() { return *cast(int*)(cast(size_t)&this + 4); }
			MaterialExpression Expression() { return *cast(MaterialExpression*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) MenuCategories() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 96); }
			ScriptString Desc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
			MaterialExpressionCompound Compound() { return *cast(MaterialExpressionCompound*)(cast(size_t)cast(void*)this + 80); }
			int MaterialExpressionEditorY() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
			int MaterialExpressionEditorX() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
			int EditorY() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			int EditorX() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bUsedByStaticParameterSet() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x20) != 0; }
		bool bUsedByStaticParameterSet(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x20; } return val; }
		bool bHidePreviewWindow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x10) != 0; }
		bool bHidePreviewWindow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x10; } return val; }
		bool bShowOutputNameOnPin() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x8) != 0; }
		bool bShowOutputNameOnPin(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x8; } return val; }
		bool bIsParameterExpression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x4) != 0; }
		bool bIsParameterExpression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x4; } return val; }
		bool bNeedToUpdatePreview() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
		bool bNeedToUpdatePreview(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
		bool bRealtimePreview() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
		bool bRealtimePreview(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	}
}
