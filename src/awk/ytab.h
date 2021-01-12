/* A Bison parser, made by GNU Bison 3.7.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_AWK_TAB_H_INCLUDED
# define YY_YY_AWK_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    FIRSTTOKEN = 258,              /* FIRSTTOKEN  */
    PROGRAM = 259,                 /* PROGRAM  */
    PASTAT = 260,                  /* PASTAT  */
    PASTAT2 = 261,                 /* PASTAT2  */
    XBEGIN = 262,                  /* XBEGIN  */
    XEND = 263,                    /* XEND  */
    NL = 264,                      /* NL  */
    ARRAY = 265,                   /* ARRAY  */
    MATCH = 266,                   /* MATCH  */
    NOTMATCH = 267,                /* NOTMATCH  */
    MATCHOP = 268,                 /* MATCHOP  */
    FINAL = 269,                   /* FINAL  */
    DOT = 270,                     /* DOT  */
    ALL = 271,                     /* ALL  */
    CCL = 272,                     /* CCL  */
    NCCL = 273,                    /* NCCL  */
    CHAR = 274,                    /* CHAR  */
    OR = 275,                      /* OR  */
    STAR = 276,                    /* STAR  */
    QUEST = 277,                   /* QUEST  */
    PLUS = 278,                    /* PLUS  */
    EMPTYRE = 279,                 /* EMPTYRE  */
    ZERO = 280,                    /* ZERO  */
    AND = 281,                     /* AND  */
    BOR = 282,                     /* BOR  */
    APPEND = 283,                  /* APPEND  */
    EQ = 284,                      /* EQ  */
    GE = 285,                      /* GE  */
    GT = 286,                      /* GT  */
    LE = 287,                      /* LE  */
    LT = 288,                      /* LT  */
    NE = 289,                      /* NE  */
    IN = 290,                      /* IN  */
    ARG = 291,                     /* ARG  */
    BLTIN = 292,                   /* BLTIN  */
    BREAK = 293,                   /* BREAK  */
    CLOSE = 294,                   /* CLOSE  */
    CONTINUE = 295,                /* CONTINUE  */
    DELETE = 296,                  /* DELETE  */
    DO = 297,                      /* DO  */
    EXIT = 298,                    /* EXIT  */
    FOR = 299,                     /* FOR  */
    FUNC = 300,                    /* FUNC  */
    SUB = 301,                     /* SUB  */
    GSUB = 302,                    /* GSUB  */
    IF = 303,                      /* IF  */
    INDEX = 304,                   /* INDEX  */
    LSUBSTR = 305,                 /* LSUBSTR  */
    MATCHFCN = 306,                /* MATCHFCN  */
    NEXT = 307,                    /* NEXT  */
    NEXTFILE = 308,                /* NEXTFILE  */
    ADD = 309,                     /* ADD  */
    MINUS = 310,                   /* MINUS  */
    MULT = 311,                    /* MULT  */
    DIVIDE = 312,                  /* DIVIDE  */
    MOD = 313,                     /* MOD  */
    ASSIGN = 314,                  /* ASSIGN  */
    ASGNOP = 315,                  /* ASGNOP  */
    ADDEQ = 316,                   /* ADDEQ  */
    SUBEQ = 317,                   /* SUBEQ  */
    MULTEQ = 318,                  /* MULTEQ  */
    DIVEQ = 319,                   /* DIVEQ  */
    MODEQ = 320,                   /* MODEQ  */
    POWEQ = 321,                   /* POWEQ  */
    PRINT = 322,                   /* PRINT  */
    PRINTF = 323,                  /* PRINTF  */
    SPRINTF = 324,                 /* SPRINTF  */
    ELSE = 325,                    /* ELSE  */
    INTEST = 326,                  /* INTEST  */
    CONDEXPR = 327,                /* CONDEXPR  */
    POSTINCR = 328,                /* POSTINCR  */
    PREINCR = 329,                 /* PREINCR  */
    POSTDECR = 330,                /* POSTDECR  */
    PREDECR = 331,                 /* PREDECR  */
    VAR = 332,                     /* VAR  */
    IVAR = 333,                    /* IVAR  */
    VARNF = 334,                   /* VARNF  */
    CALL = 335,                    /* CALL  */
    NUMBER = 336,                  /* NUMBER  */
    STRING = 337,                  /* STRING  */
    REGEXPR = 338,                 /* REGEXPR  */
    GETLINE = 339,                 /* GETLINE  */
    RETURN = 340,                  /* RETURN  */
    SPLIT = 341,                   /* SPLIT  */
    SUBSTR = 342,                  /* SUBSTR  */
    WHILE = 343,                   /* WHILE  */
    CAT = 344,                     /* CAT  */
    NOT = 345,                     /* NOT  */
    UMINUS = 346,                  /* UMINUS  */
    UPLUS = 347,                   /* UPLUS  */
    POWER = 348,                   /* POWER  */
    DECR = 349,                    /* DECR  */
    INCR = 350,                    /* INCR  */
    INDIRECT = 351,                /* INDIRECT  */
    LASTTOKEN = 352                /* LASTTOKEN  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define FIRSTTOKEN 258
#define PROGRAM 259
#define PASTAT 260
#define PASTAT2 261
#define XBEGIN 262
#define XEND 263
#define NL 264
#define ARRAY 265
#define MATCH 266
#define NOTMATCH 267
#define MATCHOP 268
#define FINAL 269
#define DOT 270
#define ALL 271
#define CCL 272
#define NCCL 273
#define CHAR 274
#define OR 275
#define STAR 276
#define QUEST 277
#define PLUS 278
#define EMPTYRE 279
#define ZERO 280
#define AND 281
#define BOR 282
#define APPEND 283
#define EQ 284
#define GE 285
#define GT 286
#define LE 287
#define LT 288
#define NE 289
#define IN 290
#define ARG 291
#define BLTIN 292
#define BREAK 293
#define CLOSE 294
#define CONTINUE 295
#define DELETE 296
#define DO 297
#define EXIT 298
#define FOR 299
#define FUNC 300
#define SUB 301
#define GSUB 302
#define IF 303
#define INDEX 304
#define LSUBSTR 305
#define MATCHFCN 306
#define NEXT 307
#define NEXTFILE 308
#define ADD 309
#define MINUS 310
#define MULT 311
#define DIVIDE 312
#define MOD 313
#define ASSIGN 314
#define ASGNOP 315
#define ADDEQ 316
#define SUBEQ 317
#define MULTEQ 318
#define DIVEQ 319
#define MODEQ 320
#define POWEQ 321
#define PRINT 322
#define PRINTF 323
#define SPRINTF 324
#define ELSE 325
#define INTEST 326
#define CONDEXPR 327
#define POSTINCR 328
#define PREINCR 329
#define POSTDECR 330
#define PREDECR 331
#define VAR 332
#define IVAR 333
#define VARNF 334
#define CALL 335
#define NUMBER 336
#define STRING 337
#define REGEXPR 338
#define GETLINE 339
#define RETURN 340
#define SPLIT 341
#define SUBSTR 342
#define WHILE 343
#define CAT 344
#define NOT 345
#define UMINUS 346
#define UPLUS 347
#define POWER 348
#define DECR 349
#define INCR 350
#define INDIRECT 351
#define LASTTOKEN 352

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 41 "src/awk/awkgram.y"

	Node	*p;
	Cell	*cp;
	int	i;
	char	*s;

#line 268 "awk.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_AWK_TAB_H_INCLUDED  */
