module UnrealScript.UnrealEd.RenderTargetCubeExporterTGA;

import UnrealScript.Core.Exporter;

extern(C++) interface RenderTargetCubeExporterTGA : Exporter
{
public extern(D):
	enum CubeFace : ubyte
	{
		CubeFace_MAX = 0,
	}
	// WARNING: Property 'CubeFace' has the same name as a defined type!
}
