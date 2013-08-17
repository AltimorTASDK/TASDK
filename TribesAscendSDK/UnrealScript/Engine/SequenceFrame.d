module UnrealScript.Engine.SequenceFrame;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Material;

extern(C++) interface SequenceFrame : SequenceObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SequenceFrame")); }
	private static __gshared SequenceFrame mDefaultProperties;
	@property final static SequenceFrame DefaultProperties() { mixin(MGDPC("SequenceFrame", "SequenceFrame Engine.Default__SequenceFrame")); }
	@property final
	{
		auto ref
		{
			Material FillMaterial() { mixin(MGPC("Material", 168)); }
			Texture2D FillTexture() { mixin(MGPC("Texture2D", 164)); }
			UObject.Color FillColor() { mixin(MGPC("UObject.Color", 160)); }
			UObject.Color BorderColor() { mixin(MGPC("UObject.Color", 156)); }
			int BorderWidth() { mixin(MGPC("int", 148)); }
			int SizeY() { mixin(MGPC("int", 144)); }
			int SizeX() { mixin(MGPC("int", 140)); }
		}
		bool bTileFill() { mixin(MGBPC(152, 0x4)); }
		bool bTileFill(bool val) { mixin(MSBPC(152, 0x4)); }
		bool bFilled() { mixin(MGBPC(152, 0x2)); }
		bool bFilled(bool val) { mixin(MSBPC(152, 0x2)); }
		bool bDrawBox() { mixin(MGBPC(152, 0x1)); }
		bool bDrawBox(bool val) { mixin(MSBPC(152, 0x1)); }
	}
}
