{===========================================================================
	Este arquivo pertence ao Projeto do Sistema Operacional LuckyOS (LOS).
	--------------------------------------------------------------------------
	Copyright (C) 2013 - Luciano L. Goncalez
	--------------------------------------------------------------------------
	a.k.a.: Master Lucky
	eMail : master.lucky.br@gmail.com
	Home  : http://lucky-labs.blogspot.com.br
============================================================================
	Este programa e software livre; voce pode redistribui-lo e/ou modifica-lo
	sob os termos da Licenca Publica Geral GNU, conforme publicada pela Free
	Software Foundation; na versao 2 da	Licenca.

	Este programa e distribuido na expectativa de ser util, mas SEM QUALQUER
	GARANTIA; sem mesmo a garantia implicita de COMERCIALIZACAO ou de
	ADEQUACAO A QUALQUER PROPOSITO EM PARTICULAR. Consulte a Licenca Publica
	Geral GNU para obter mais detalhes.

	Voce deve ter recebido uma copia da Licenca Publica Geral GNU junto com
	este programa; se nao, escreva para a Free Software Foundation, Inc., 59
	Temple Place, Suite 330, Boston, MA	02111-1307, USA. Ou acesse o site do
	GNU e obtenha sua licenca: http://www.gnu.org/
============================================================================
	Unit ErrorsDef.pas
	--------------------------------------------------------------------------
	Unit de definicoes de errors.
	--------------------------------------------------------------------------
	Versao: 0.2
	Data: 26/07/2014
	--------------------------------------------------------------------------
	Compilar: Compilavel FPC
	> fpc errorsdef.pas
	------------------------------------------------------------------------
	Executar: Nao executavel diretamente; Unit.
===========================================================================}

unit ErrorsDef;

interface

type
	TErrorCode =
	(
		// Erros gerais
		{0}		ERROR_NONE,
		{1}		ERROR_UNDEFINED,

		// Erros das units compilador
		{2}		ERROR_SYSUTILS_INVALID_INTEGER,

		// Erros da interface do sistema
		{3}		ERROR_SYSCALL_INVALID_CALL,

		// Erros do sistema de arquivos
		{4}		ERROR_FS_UNDEFINED,
		{5}		ERROR_FS_FILE_NOT_FOUND,
		{6}		ERROR_FS_ALL_FD_BUSY,
		{7}		ERROR_FS_INVALID_FD,
		{8}		ERROR_FS_CLOSED_FD,

		// Erros do driver de terminal
		{9}		ERROR_TTY_INVALID_TOKEN,
		{10}	ERROR_TTY_INVALID_COMMAND,

		// Erros da biblioteca de terminal
		{11}	ERROR_CTTY_INVALID_CID,
		{12}	ERROR_CTTY_CLOSED_TTY,
		{13}	ERROR_CTTY_BROKEN_TTY,
		{14}	ERROR_CTTY_ISNOT_INPUT,
		{15}	ERROR_CTTY_ISNOT_OUTPUT,
		{16}	ERROR_CTTY_INVALID_TOKEN
	);


	function GetErrorString(ErrorNo : TErrorCode) : ShortString;


var
	ErrorNo : UInt;


implementation

const
	cErrorStrings : array[TErrorCode] of PChar =
	(
		// Erros gerais
		{0}		'ERROR_NONE',
		{1}		'ERROR_UNDEFINED',

		// Erros das units compilador
		{2}		'ERROR_SYSUTILS_INVALID_INTEGER',

		// Erros da interface do sistema
		{3}		'ERROR_SYSCALL_INVALID_CALL',

		// Erros do sistema de arquivos
		{4}		'ERROR_FS_UNDEFINED',
		{5}		'ERROR_FS_FILE_NOT_FOUND',
		{6}		'ERROR_FS_ALL_FD_BUSY',
		{7}		'ERROR_FS_INVALID_FD',
		{8}		'ERROR_FS_CLOSED_FD',

		// Erros do driver de terminal
		{9}		'ERROR_TTY_INVALID_TOKEN',
		{10}	'ERROR_TTY_INVALID_COMMAND',

		// Erros da biblioteca de terminal
		{11}	'ERROR_CTTY_INVALID_CID',
		{12}	'ERROR_CTTY_CLOSED_TTY',
		{13}	'ERROR_CTTY_BROKEN_TTY',
		{14}	'ERROR_CTTY_ISNOT_INPUT',
		{15}	'ERROR_CTTY_ISNOT_OUTPUT',
		{16}	'ERROR_CTTY_INVALID_TOKEN'
	);


function GetErrorString(ErrorNo : TErrorCode) : ShortString;
begin
	GetErrorString := cErrorStrings[ErrorNo];
end;


end.
