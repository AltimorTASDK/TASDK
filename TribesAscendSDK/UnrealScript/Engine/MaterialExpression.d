module UnrealScript.Engine.MaterialExpression;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionCompound;

extern(C++) interface MaterialExpression : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MaterialExpression")); }
	private static __gshared MaterialExpression mDefaultProperties;
	@property final static MaterialExpression DefaultProperties() { mixin(MGDPC("MaterialExpression", "MaterialExpression Engine.Default__MaterialExpression")); }
	struct ExpressionInput
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.MaterialExpression.ExpressionInput")); }
		@property final auto ref
		{
			int GCC64_Padding() { mixin(MGPS("int", 24)); }
			int MaskA() { mixin(MGPS("int", 20)); }
			int MaskB() { mixin(MGPS("int", 16)); }
			int MaskG() { mixin(MGPS("int", 12)); }
			int MaskR() { mixin(MGPS("int", 8)); }
			int Mask() { mixin(MGPS("int", 4)); }
			MaterialExpression Expression() { mixin(MGPS("MaterialExpression", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) MenuCategories() { mixin(MGPC("ScriptArray!(ScriptName)", 96)); }
			ScriptString Desc() { mixin(MGPC("ScriptString", 84)); }
			MaterialExpressionCompound Compound() { mixin(MGPC("MaterialExpressionCompound", 80)); }
			int MaterialExpressionEditorY() { mixin(MGPC("int", 72)); }
			int MaterialExpressionEditorX() { mixin(MGPC("int", 68)); }
			int EditorY() { mixin(MGPC("int", 64)); }
			int EditorX() { mixin(MGPC("int", 60)); }
		}
		bool bUsedByStaticParameterSet() { mixin(MGBPC(76, 0x20)); }
		bool bUsedByStaticParameterSet(bool val) { mixin(MSBPC(76, 0x20)); }
		bool bHidePreviewWindow() { mixin(MGBPC(76, 0x10)); }
		bool bHidePreviewWindow(bool val) { mixin(MSBPC(76, 0x10)); }
		bool bShowOutputNameOnPin() { mixin(MGBPC(76, 0x8)); }
		bool bShowOutputNameOnPin(bool val) { mixin(MSBPC(76, 0x8)); }
		bool bIsParameterExpression() { mixin(MGBPC(76, 0x4)); }
		bool bIsParameterExpression(bool val) { mixin(MSBPC(76, 0x4)); }
		bool bNeedToUpdatePreview() { mixin(MGBPC(76, 0x2)); }
		bool bNeedToUpdatePreview(bool val) { mixin(MSBPC(76, 0x2)); }
		bool bRealtimePreview() { mixin(MGBPC(76, 0x1)); }
		bool bRealtimePreview(bool val) { mixin(MSBPC(76, 0x1)); }
	}
}
