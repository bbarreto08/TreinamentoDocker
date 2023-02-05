// See https://aka.ms/new-console-template for more information


string user = System.Environment.GetEnvironmentVariable("user");
string password = System.Environment.GetEnvironmentVariable("password");

Console.WriteLine($"Connection {user} - {password}");

Console.WriteLine(System.Environment.MachineName);
Console.WriteLine(System.Environment.OSVersion);

Console.WriteLine("Hello, World!");
