module UnrealScript.Engine.MaterialExpressionTextureCoordinate;

import ScriptClasses;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTextureCoordinate : MaterialExpression
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MaterialExpressionTextureCoordinate")); }
	@property final
	{
		auto ref
		{
			float VTiling() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float UTiling() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			int CoordinateIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
		}
		bool UnMirrorV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x2) != 0; }
		bool UnMirrorV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x2; } return val; }
		bool UnMirrorU() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
		bool UnMirrorU(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
	}
}
