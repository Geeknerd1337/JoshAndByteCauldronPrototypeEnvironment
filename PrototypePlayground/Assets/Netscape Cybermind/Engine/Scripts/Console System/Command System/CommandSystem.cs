using System;
using System.Linq;
using System.Collections.Generic;
using UnityEngine;

namespace Armadillo.Netscape.Console
{
    internal static class CommandSystem
    {
        private static Dictionary<string, ConsoleCommand> commands = new Dictionary<string, ConsoleCommand>();

        [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
        internal static void Initialize()
        {
            foreach (var item in AppDomain.CurrentDomain.GetAssemblies())
                CommandFactory.AddAssembly(item);
        }

        internal static void AddCommand(ConsoleCommand command)
        {
            commands.Add(command.Command, command);
        }

        public static bool InvokeCommand(string commandLine)
        {
            var command = commandLine.Split(' ').First();
            var args = commandLine.Substring(command.Length).SplitArguments();

            return InvokeCommand(command, args);
        }

        public static bool InvokeCommand(string command, params string[] args)
        {
            if (!commands.TryGetValue(command, out var consoleCommand))
            {
                Debug.Log($"Couldn't find command \"{command}\"");
                return false;
            }

            if (args != null && args.Length > 0)
                consoleCommand.OnInvoke.Invoke(CommandInterpreter.ConvertArgs(CommandInterpreter.GetParameterTypes(consoleCommand.Info), args));
            else
                consoleCommand.OnInvoke.Invoke(null);

            return true;
        }
    }
}