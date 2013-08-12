module UnrealScript.Engine.SequenceFrame;

import ScriptClasses;
import UnrealScript.Engine.SequenceObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Material;

extern(C++) interface SequenceFrame : SequenceObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SequenceFrame")); }
	private static __gshared SequenceFrame mDefaultProperties;
	@property final static SequenceFrame DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SequenceFrame)("SequenceFrame Engine.Default__SequenceFrame")); }
	@property final
	{
		auto ref
		{
			Material FillMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 168); }
			Texture2D FillTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 164); }
			UObject.Color FillColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 160); }
			UObject.Color BorderColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 156); }
			int BorderWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
			int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
			int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
		}
		bool bTileFill() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x4) != 0; }
		bool bTileFill(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x4; } return val; }
		bool bFilled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x2) != 0; }
		bool bFilled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x2; } return val; }
		bool bDrawBox() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x1) != 0; }
		bool bDrawBox(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x1; } return val; }
	}
}
