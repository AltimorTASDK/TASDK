module UnrealScript.Engine.MaterialExpressionComment;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionComment : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionComment")); }
	private static __gshared MaterialExpressionComment mDefaultProperties;
	@property final static MaterialExpressionComment DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MaterialExpressionComment)("MaterialExpressionComment Engine.Default__MaterialExpressionComment")); }
	@property final auto ref
	{
		ScriptString Text() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
		int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 116); }
		int PosY() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
		int PosX() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
	}
}
