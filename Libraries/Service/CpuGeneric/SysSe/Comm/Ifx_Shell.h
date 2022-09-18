/**
 * \file Ifx_Shell.h
 * \brief Shell functions.
 * \ingroup library_srvsw_sysse_comm_shell
 *
 * \version disabled
 * \copyright Copyright (c) 2013 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 * Use of this file is subject to the terms of use agreed between (i) you or
 * the company in which ordinary course of business you are acting and (ii)
 * Infineon Technologies AG or its licensees. If and as long as no such terms
 * of use are agreed, use of this file is subject to following:
 *
 * Boost Software License - Version 1.0 - August 17th, 2003
 *
 * Permission is hereby granted, free of charge, to any person or organization
 * obtaining a copy of the software and accompanying documentation covered by
 * this license (the "Software") to use, reproduce, display, distribute,
 * execute, and transmit the Software, and to prepare derivative works of the
 * Software, and to permit third-parties to whom the Software is furnished to
 * do so, all subject to the following:
 *
 * The copyright notices in the Software and this entire statement, including
 * the above license grant, this restriction and the following disclaimer, must
 * be included in all copies of the Software, in whole or in part, and all
 * derivative works of the Software, unless such copies or derivative works are
 * solely in the form of machine-executable object code generated by a source
 * language processor.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
 * SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
 * FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * \defgroup library_srvsw_sysse_comm_shell Shell
 * This module implements the Shell functions.
 * It parses a command line and call the corresponding command execution.
 * Multiple command list can be used in parallel.
 *
 * Only full command match is accepted.
 *
 * New feature / change:
 * - Prefix can be defined for each command list
 * - Help for a single command is displayed with "help <command>"
 * - help for a command list is displayed with "help <listPrefix>"
 * - command short cut is not allowed
 * - command with identical start option "opt1 opt2" and "opt1 opt3" are accepted, and root to different handlers
 * - Enhanced help info print
 *
 * Help text xyntax:
 * - /p indicates a parameter description, can be multi-line, lines must be separated with ENDL
 * - /s Indicates a syntax help
 *
 * Example of help list:
 * \code
 * Ifx_Shell_Command Ifx_g_OsciShell_commands[] =
 * {
 *     {IFX_OSCI_SHELL_PREFIX, "     : Oscilloscope functions"
 *          , NULL_PTR, NULL_PTR               },
 *     {"run", "      : run the oscilloscope"ENDL
 *      "/s run [single|auto|normal]"
 *          , NULL_PTR, &Ifx_OsciShell_run     },
 *     {"stop", "     : stop oscilloscope"
 *          , NULL_PTR, &Ifx_OsciShell_stop    },
 *     {"trigger", "  : trigger settings"ENDL
 *      "/s trigger [force|single|level <value>|raising|falling|source <chNum>|interval <value>]"ENDL
 *          "/p force: Force the trigger"ENDL
 *          "/p single: Single the trigger"ENDL
 *          "/p level <value>: Set trigger level to value"ENDL
 *          "/p [raising|falling]: Set trigger to raising or falling edges"ENDL
 *          "/p source <chNum>: Set trigger channel number"ENDL
 *          "<chNum> can be obtained with 'channel' command"ENDL
 *          "/p interval <value>: Set sampling interval to value"
 *
 *          , NULL_PTR, &Ifx_OsciShell_trigger },
 *     {"status", "   : display status"
 *          , NULL_PTR, &Ifx_OsciShell_status  },
 *     {"channel", "  : channel information"ENDL
 *          "/s channel: Show the channels information"ENDL
 *          "/s channel <ch> <sig>: Assign a signal to a channel"
 *          , NULL_PTR, &Ifx_OsciShell_channel },
 *     {"analyze", "  : signal analysis of a ch"ENDL
 *      "/s analyze <ch>: analyze the input channel <ch>"
 *          , NULL_PTR, &Ifx_OsciShell_analyze },
 *     {"simulate", " : simulate a signal"ENDL
 *      "/s simulate <ch> <op> <wave> <freq> <ampl> <offs> <phase> : Simulate a signal generation"ENDL
 *             "/p <ch>   : {0 .. Channel count}"ENDL
 *             "/p <op>   : {add,sub,mul,clr}"ENDL
 *             "/p <wave> : {sine,square}"ENDL
 *             "/p <freq> : -INF .. INF"ENDL
 *             "/p <offs> : -INF .. INF"ENDL
 *             "/p <ampl> : -INF .. INF"ENDL
 *             "/p <phase>: 0 .. 360 [degree]"ENDL
 *         "/s simulate <ch> atan <ych> <xch>: Compute atan(ych/xch) and store in channel <ch>"
 *          , NULL_PTR, &Ifx_OsciShell_simulate},
 *     {"dump", "     : dump values (all channels)"ENDL
 *      "/s dump <ch> [hex]"ENDL
 *          "/p <ch>: Dump the values of the channel <ch>"ENDL
 *          "/p hex: If hex is specified, values will be in hexadecimal"
 *          , NULL_PTR, &Ifx_OsciShell_dump    },
 *     IFX_SHELL_COMMAND_LIST_END,
 * };
 * \endcode
 *
 * To enable help command, include the below command in the main command list
 *    {"help",         SHELL_HELP_DESCRIPTION_TEXT                             , &\<Ifx_Shell\>, &Ifx_Shell_showHelp,       },
 *
 * \ingroup library_srvsw_sysse_comm
 *
 */

#ifndef IFX_SHELL_H
#define IFX_SHELL_H                    1
//----------------------------------------------------------------------------------------
#include "StdIf/IfxStdIf_DPipe.h"
#include "Ifx_Cfg.h"
//----------------------------------------------------------------------------------------
#define IFX_SHELL_NULL_CHAR            '\0'

#ifndef IFX_CFG_SHELL_CMD_HISTORY_SIZE
#define IFX_CFG_SHELL_CMD_HISTORY_SIZE (10)     /**<\brief Number of commands to store in history */
#endif

#ifndef IFX_CFG_SHELL_CMD_LINE_SIZE
#define IFX_CFG_SHELL_CMD_LINE_SIZE    (128)    /**<\brief max command line IFX_CFG_SHELL_CMD_LINE_SIZE - 1 */
#endif

#ifndef IFX_CFG_SHELL_COMMAND_LISTS
#define IFX_CFG_SHELL_COMMAND_LISTS    (1)      /**<\brief Number of command lists */
#endif

#ifndef IFX_CFG_SHELL_PROMPT
#define IFX_CFG_SHELL_PROMPT           "Shell>"    /**<\brief Shell prompt */
#endif

#define SHELL_HELP_DESCRIPTION_TEXT                      \
    "     : Display command list, and command help."ENDL \
    "/s help: show all commands"ENDL                     \
    "/s help <command>: show the command details"

/** \brief Marker for end of command list, the end of list is detected by commandLine=NULL */
#define IFX_SHELL_COMMAND_LIST_END     {0, 0, 0, 0}

/** \brief Marker for end of syntax list */
#define IFX_SHELL_SYNTAX_LIST_END      {0, 0}

/** \brief Signifies no item in use in command history list */
#define IFX_SHELL_CMD_HISTORY_NO_ITEM  (-1)
//----------------------------------------------------------------------------------------
/** \brief Result code definition used after each executed Shell command */
typedef enum
{
    Ifx_Shell_ResultCode_unknown   = (128),
    Ifx_Shell_ResultCode_nok       = (129),
    Ifx_Shell_ResultCode_undefined = (130),
    Ifx_Shell_ResultCode_ok        = (255)
} Ifx_Shell_ResultCode;

/** \brief Definition of a callback function which handles a Shell command */
typedef boolean (*Ifx_Shell_Call)(pchar args, void *data, IfxStdIf_DPipe *io);

/** \brief Shell command object */
typedef struct
{
    pchar          commandLine;
    pchar          help;
    void          *data;
    Ifx_Shell_Call call;
} Ifx_Shell_Command;

/** \brief Command line editing state */
typedef struct
{
    char     *cmdStr;               /**< \brief Pointer to current string containing command line as so far processed                                    */
    Ifx_SizeT cursor;               /**< \brief Pointer to variable containing position of cursor in so-far-processed command line                       */
    Ifx_SizeT length;               /**< \brief Pointer to variable containing total length of command line                                              */
    boolean   historyAdd;           /**< \brief If TRUE, when Enter is pressed, the current cmdLine should be added to the command history (in parent)   */
    Ifx_SizeT historyItem;          /**< \brief Item ID in command history list, or IFX_SHELL_CMD_HISTORY_NO_ITEM if not using list (e.g. new command)       */
} Ifx_Shell_CmdLine;

/** \brief Shell command processing state */
typedef enum
{
    IFX_SHELL_CMD_STATE_NORMAL,                 /**< \brief Normal - no special sequences being processed */
    IFX_SHELL_CMD_STATE_ESCAPE,                 /**< \brief Escape character has been pressed */
    IFX_SHELL_CMD_STATE_ESCAPE_BRACKET,         /**< \brief ESC [ pressed */
    IFX_SHELL_CMD_STATE_ESCAPE_BRACKET_NUMBER   /**< \brief ESC [ (number) pressed */
} Ifx_Shell_CmdState;

/** \brief Shell protocol configuration */
typedef struct
{
    boolean (*start)(void *protocol, IfxStdIf_DPipe *io);
    void (*execute)(void *protocol);
    void (*onStart)(void *protocol, void *data);
    void   *onStartData;
    void   *object;
    boolean started;
} Ifx_Shell_Protocol;

/** \brief Shell control flags */
typedef struct
{
    uint16 showPrompt : 1;
    uint16 enabled : 1;
    uint16 sendResultCode : 1;
    uint16 echo : 1;
    uint16 echoError : 1;
} Ifx_Shell_Flags;

/** \brief internal Shell run-time data */
typedef struct
{
    char               echo[2];
    char               inputbuffer[IFX_CFG_SHELL_CMD_LINE_SIZE + 1];
    char               cmdStr[IFX_CFG_SHELL_CMD_LINE_SIZE];
    Ifx_Shell_CmdState cmdState;
    char               escBracketNum;
} Ifx_Shell_Runtime;

typedef Ifx_Shell_Command       *Ifx_Shell_CommandList;
typedef const Ifx_Shell_Command *Ifx_Shell_CommandListConst;
/**
 * \brief Shell object definition
 */
typedef struct
{
    IfxStdIf_DPipe *io;             /**< \brief Pointer to IfxStdIf_DPipe object used by the Shell */

    Ifx_Shell_Flags control;        /**< \brief control flags */

    /** \brief Array of pointers to the history entries */
    char *cmdHistory[IFX_CFG_SHELL_CMD_HISTORY_SIZE];

    /** \brief Current status of command line editing (saves passing many parameters around) */
    Ifx_Shell_CmdLine cmd;

    Ifx_Shell_Runtime locals;       /**< \brief Runtime data */

    /** \brief Array of pointers to command list. The pointed location shall be constant
     * during Shell lifetime, e.g. stored in non-volatile memory or as global variable
     *
     * The 1st item in the list is use as a group command prefix if its "call" parameter is NULL pointer, else it is use as other entries.
     * In case "call" is NULL, the corresponding 'data' is ignored, and the 'help' is displayed.
     *
     **/
    Ifx_Shell_CommandListConst commandList[IFX_CFG_SHELL_COMMAND_LISTS];

    Ifx_Shell_Protocol         protocol; /**< \brief Protocol handler data */
} Ifx_Shell;

/**
 * \brief Shell configuration.
 */
typedef struct
{
    IfxStdIf_DPipe            *standardIo;                               /**<\brief Pointer to a IfxStdIf_DPipe object used by the Shell */
    boolean                    echo;                                     /**<\brief Specifies whether each command shall be echoed back to user */
    boolean                    showPrompt;                               /**<\brief Specifies whether the IFX_CFG_SHELL_PROMPT shall be displayed after each command */
    boolean                    sendResultCode;                           /**<\brief Specifies whether the Ifx_Shell_ResultCode shall be sent to user */
    Ifx_Shell_CommandListConst commandList[IFX_CFG_SHELL_COMMAND_LISTS]; /**< \brief Specifies pointer to the command list */
    Ifx_Shell_Protocol         protocol;                                 /**<\brief Configuration for the Ifx_Shell_Protocol */
} Ifx_Shell_Config;

/**
 * \brief Shell Syntax Description.
 */
typedef struct
{
    pchar syntax;                      /**<\brief syntax */
    pchar description;                 /**<\brief description */
} Ifx_Shell_Syntax;

//----------------------------------------------------------------------------------------
/** \addtogroup library_srvsw_sysse_comm_shell
 * \{ */

/** \name Basic functionality
 * \{ */

/** Set the config default parameter
 *
 * \param config Pointer to the configuration structure to be initialized
 */
void Ifx_Shell_initConfig(Ifx_Shell_Config *config);

/**
 * \brief Initialize the shell
 * \param shell Pointer to the \ref Ifx_Shell object
 * \param config Pointer to the configuration structure
 */
IFX_EXTERN boolean Ifx_Shell_init(Ifx_Shell *shell, const Ifx_Shell_Config *config);

/**
 * \brief Deinitialise the shell
 * \param shell Pointer to the \ref Ifx_Shell object
 */
IFX_EXTERN void Ifx_Shell_deinit(Ifx_Shell *shell);

/**
 * \brief Clear the receive buffer and enable the shell
 * \param shell Pointer to the \ref Ifx_Shell object
 */
IFX_EXTERN void Ifx_Shell_enable(Ifx_Shell *shell);

/**
 * \brief Disable the shell
 * \param shell Pointer to the \ref Ifx_Shell object
 */
IFX_EXTERN void Ifx_Shell_disable(Ifx_Shell *shell);

/**
 * \brief Process the shell.
 *
 * This function shall be called within a loop or periodic timer to guarantee the correct
 * processing of the incoming/received data.
 *
 * \param shell Pointer to the \ref Ifx_Shell object
 */
IFX_EXTERN void Ifx_Shell_process(Ifx_Shell *shell);

/** \} */
//----------------------------------------------------------------------------------------
/** \name Parsing functions
 * \{ */

/**
 * \brief Within the context of Shell.call, skip the whitespaces of the args string.
 * \param args Pointer to the original string
 * \return Pointer to the string after skipping the whitespaces
 */
IFX_EXTERN pchar Ifx_Shell_skipWhitespace(pchar args);

/**
 * \brief Match string pointed by the *argsPtr with a given token
 * \param argsPtr Pointer to the argument null-terminated string
 * \param token Pointer to the token string to match
 * \retval TRUE if the given token match with the string pointed by argsPtr
 */
IFX_EXTERN boolean Ifx_Shell_matchToken(pchar *argsPtr, pchar token);

/**
 * \brief Parse a token
 * Return the next token in tokenBuffer and move the argsPtr pointer after this token
 * \param argsPtr Pointer to the argument null-terminated string
 * \param tokenBuffer Pointer to the value storage
 * \param bufferLength Maximum parsing length
 */
IFX_EXTERN boolean Ifx_Shell_parseToken(pchar *argsPtr, char *tokenBuffer, int bufferLength);

/**
 * \brief Parse an address
 * \param argsPtr Pointer to the argument null-terminated string
 * \param address Pointer to the value storage
 */
IFX_EXTERN boolean Ifx_Shell_parseAddress(pchar *argsPtr, void **address);

/**
 * \brief Parse a signed 32-bit integer value
 * \param argsPtr Pointer to the argument null-terminated string
 * \param value Pointer to the value storage
 */
IFX_EXTERN boolean Ifx_Shell_parseSInt32(pchar *argsPtr, sint32 *value);

/**
 * \brief Parse an unsigned 32-bit integer value
 * \param argsPtr Pointer to the argument null-terminated string
 * \param value Pointer to the value storage
 * \param hex if TRUE, hex parsing will be done, else decimal parsing
 */
IFX_EXTERN boolean Ifx_Shell_parseUInt32(pchar *argsPtr, uint32 *value, boolean hex);

/**
 * \brief Parse a signed 64-bit integer value
 * \param argsPtr Pointer to the argument null-terminated string
 * \param value Pointer to the value storage
 */
IFX_EXTERN boolean Ifx_Shell_parseSInt64(pchar *argsPtr, sint64 *value);

/**
 * \brief Parse an unsigned 64-bit integer value
 * \param argsPtr Pointer to the argument null-terminated string
 * \param value Pointer to the value storage
 * \param hex if TRUE, hex parsing will be done, else decimal parsing
 */
IFX_EXTERN boolean Ifx_Shell_parseUInt64(pchar *argsPtr, uint64 *value, boolean hex);

/**
 * \brief Parse a 64-bit (double precision) floating-point value
 * \param argsPtr Pointer to the argument null-terminated string
 * \param value Pointer to the value storage
 */
IFX_EXTERN boolean Ifx_Shell_parseFloat64(pchar *argsPtr, float64 *value);

/**
 * \brief Parse a 32-bit (single precision) floating-point value
 * \param argsPtr Pointer to the argument null-terminated string
 * \param value Pointer to the value storage
 */
IFX_EXTERN boolean Ifx_Shell_parseFloat32(pchar *argsPtr, float32 *value);

/** \} */
//----------------------------------------------------------------------------------------
/** \name Command list functions
 * \{ */

/**
 * \brief Find command in command List
 * \param commandList Pointer to the first entry of an array of \ref Ifx_Shell_Command
 * \param commandLine Pointer to null-terminated string containings the command to search.
 * \param args Pointer to the argument null-terminated string
 * \param match Return the number of arguments that matches
 */
IFX_EXTERN const Ifx_Shell_Command *Ifx_Shell_commandFind(Ifx_Shell_CommandListConst commandList, pchar commandLine, pchar *args, uint32 *match);

/**
 * \brief Implementation of \ref Ifx_Shell_Call. Show the help menu from single command list.
 * \param commandList Pointer to an array of Ifx_Shell_Command
 * \param io Pointer to the IfxStdIf_DPipe object
 * \param briefOnly if TRUE, show only the brief description, else show the full description
 * \param singleCommand If TRUE, only show the 1st command pointed by commandList, else show the full list
 */
IFX_EXTERN boolean Ifx_Shell_showHelpSingle(Ifx_Shell_CommandListConst commandList, IfxStdIf_DPipe *io, boolean briefOnly, boolean singleCommand);

/**
 * \brief Implementation of \ref Ifx_Shell_Call. Show the help menu and list of commands.
 * \param args The argument null-terminated string
 * \param shellPtr Pointer to a Shell object
 * \param io Pointer to \ref IfxStdIf_DPipe object
 */
IFX_EXTERN boolean Ifx_Shell_showHelp(pchar args, void *shellPtr, IfxStdIf_DPipe *io);

/**
 * \brief Implementation of \ref Ifx_Shell_Call. print the syntax.
 * \param syntaxList Pointer to syntax list
 * \param io Pointer to \ref IfxStdIf_DPipe object
 */
IFX_EXTERN void Ifx_Shell_printSyntax(const Ifx_Shell_Syntax *syntaxList, IfxStdIf_DPipe *io);

/** \} */
//----------------------------------------------------------------------------------------
/** \name Sub protocol functions
 * \{ */

/**
 * \brief Implementation of \ref Ifx_Shell_Call. Start the Shell protocol.
 * \param args The argument null-terminated string
 * \param data Pointer to \ref Ifx_Shell object
 * \param io Pointer to \ref IfxStdIf_DPipe object
 */
IFX_EXTERN boolean Ifx_Shell_protocolStart(pchar args, void *data, IfxStdIf_DPipe *io);

/**
 * \brief Implementation of \ref Ifx_Shell_Call. Start the ShellBb protocol.
 * \param args The argument null-terminated string
 * \param data Pointer to \ref Ifx_Shell object
 * \param io Pointer to \ref IfxStdIf_DPipe object
 */
IFX_EXTERN boolean Ifx_Shell_bbProtocolStart(pchar args, void *data, IfxStdIf_DPipe *io);

/** \} */
//----------------------------------------------------------------------------------------
/** \} */

#endif
