module main;

import std.conv;
import std.file;
import std.stdio;
import std.process;

import Config;

void main(string[] args)
{
	string libBinPath = MakeQuotable(getcwd());
	auto p = spawnShell(SDKBinPath ~ `Binaries/Win32/TribesAscend.exe TrCTF-Katabatic -seekfreeloading`);
	auto p2 = executeShell(`(for /F "TOKENS=1,2,*" %a in ('tasklist /FI "IMAGENAME eq TribesAscend.exe"') do set MyPID=%b) & (echo %MyPID% > pid)`);

	Pid gdb = spawnProcess([MinGWRootPath ~ "bin/gdb.exe", "--readnow", `--symbols="` ~ libBinPath ~ `/../../../TribesAscendSDK/bin/Debug/TribesAscendSDK.dll"`, "--pid=" ~ p2.output]);// ~ to!string(p.processID)]);
	wait(gdb);
}

private string MakeQuotable(string str)
{
	char[] s = str.dup;
	for (int i = 0; i < s.length; i++)
	{
		if (s[i] == '\\')
			s[i] = '/';
	}
	return cast(string)s;
}
