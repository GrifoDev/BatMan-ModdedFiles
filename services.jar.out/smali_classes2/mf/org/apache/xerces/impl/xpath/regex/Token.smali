.class Lmf/org/apache/xerces/impl/xpath/regex/Token;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;,
        Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;
    }
.end annotation


# static fields
.field static final ANCHOR:I = 0x8

.field static final BACKREFERENCE:I = 0xc

.field static final CHAR:I = 0x0

.field static final CHAR_FINAL_QUOTE:I = 0x1e

.field static final CHAR_INIT_QUOTE:I = 0x1d

.field static final CHAR_LETTER:I = 0x1f

.field static final CHAR_MARK:I = 0x20

.field static final CHAR_NUMBER:I = 0x21

.field static final CHAR_OTHER:I = 0x23

.field static final CHAR_PUNCTUATION:I = 0x24

.field static final CHAR_SEPARATOR:I = 0x22

.field static final CHAR_SYMBOL:I = 0x25

.field static final CLOSURE:I = 0x3

.field static final CONCAT:I = 0x1

.field static final CONDITION:I = 0x1a

.field static final COUNTTOKENS:Z = true

.field static final DOT:I = 0xb

.field static final EMPTY:I = 0x7

.field static final FC_ANY:I = 0x2

.field static final FC_CONTINUE:I = 0x0

.field static final FC_TERMINAL:I = 0x1

.field static final INDEPENDENT:I = 0x18

.field static final LOOKAHEAD:I = 0x14

.field static final LOOKBEHIND:I = 0x16

.field static final MODIFIERGROUP:I = 0x19

.field static final NEGATIVELOOKAHEAD:I = 0x15

.field static final NEGATIVELOOKBEHIND:I = 0x17

.field private static final NONBMP_BLOCK_START:I = 0x54

.field static final NONGREEDYCLOSURE:I = 0x9

.field static final NRANGE:I = 0x5

.field static final PAREN:I = 0x6

.field static final RANGE:I = 0x4

.field static final STRING:I = 0xa

.field static final UNION:I = 0x2

.field static final UTF16_MAX:I = 0x10ffff

.field private static final blockNames:[Ljava/lang/String;

.field static final blockRanges:Ljava/lang/String; = "\u0000\u007f\u0080\u00ff\u0100\u017f\u0180\u024f\u0250\u02af\u02b0\u02ff\u0300\u036f\u0370\u03ff\u0400\u04ff\u0530\u058f\u0590\u05ff\u0600\u06ff\u0700\u074f\u0780\u07bf\u0900\u097f\u0980\u09ff\u0a00\u0a7f\u0a80\u0aff\u0b00\u0b7f\u0b80\u0bff\u0c00\u0c7f\u0c80\u0cff\u0d00\u0d7f\u0d80\u0dff\u0e00\u0e7f\u0e80\u0eff\u0f00\u0fff\u1000\u109f\u10a0\u10ff\u1100\u11ff\u1200\u137f\u13a0\u13ff\u1400\u167f\u1680\u169f\u16a0\u16ff\u1780\u17ff\u1800\u18af\u1e00\u1eff\u1f00\u1fff\u2000\u206f\u2070\u209f\u20a0\u20cf\u20d0\u20ff\u2100\u214f\u2150\u218f\u2190\u21ff\u2200\u22ff\u2300\u23ff\u2400\u243f\u2440\u245f\u2460\u24ff\u2500\u257f\u2580\u259f\u25a0\u25ff\u2600\u26ff\u2700\u27bf\u2800\u28ff\u2e80\u2eff\u2f00\u2fdf\u2ff0\u2fff\u3000\u303f\u3040\u309f\u30a0\u30ff\u3100\u312f\u3130\u318f\u3190\u319f\u31a0\u31bf\u3200\u32ff\u3300\u33ff\u3400\u4db5\u4e00\u9fff\ua000\ua48f\ua490\ua4cf\uac00\ud7a3\ue000\uf8ff\uf900\ufaff\ufb00\ufb4f\ufb50\ufdff\ufe20\ufe2f\ufe30\ufe4f\ufe50\ufe6f\ufe70\ufefe\ufeff\ufeff\uff00\uffef"

.field private static final categories:Ljava/util/Hashtable;

.field private static final categories2:Ljava/util/Hashtable;

.field private static final categoryNames:[Ljava/lang/String;

.field static final nonBMPBlockRanges:[I

.field static nonxs:Ljava/util/Hashtable; = null

.field private static final serialVersionUID:J = 0x75c0b0b811d26879L

.field static token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field private static token_ccs:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_dot:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_empty:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field private static token_grapheme:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_linebeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_linebeginning2:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_lineend:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_not_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_not_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_not_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_not_wordedge:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_stringbeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_stringend:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_stringend2:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_wordbeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_wordedge:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static token_wordend:Lmf/org/apache/xerces/impl/xpath/regex/Token; = null

.field static tokens:I = 0x0

.field static final viramaString:Ljava/lang/String; = "\u094d\u09cd\u0a4d\u0acd\u0b4d\u0bcd\u0c4d\u0ccd\u0d4d\u0e3a\u0f84"


# instance fields
.field final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0x9

    sput v7, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_empty:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x5e

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_linebeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x40

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_linebeginning2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x24

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_lineend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x41

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringbeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x7a

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x5a

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringend2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x62

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordedge:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x42

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordedge:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x3c

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordbeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v0, 0x3e

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_dot:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v1, 0x41

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v1, 0x5f

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, v3, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, v4, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, v5, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, v6, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/16 v1, 0x20

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Cn"

    aput-object v1, v0, v7

    const-string/jumbo v1, "Lu"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ll"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "Lt"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "Lm"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "Lo"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Mn"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Me"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Mc"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Nd"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Nl"

    aput-object v1, v0, v4

    const-string/jumbo v1, "No"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "Zs"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Zl"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Zp"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "Cc"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "Cf"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "Co"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "Cs"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/16 v1, 0x14

    const-string/jumbo v2, "Pd"

    aput-object v2, v0, v1

    const-string/jumbo v1, "Ps"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "Pe"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "Pc"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "Po"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "Sm"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "Sc"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "Sk"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "So"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const/16 v1, 0x1d

    const-string/jumbo v2, "Pi"

    aput-object v2, v0, v1

    const-string/jumbo v1, "Pf"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const/16 v1, 0x1f

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const-string/jumbo v1, "M"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "N"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "Z"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "C"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "P"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "S"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categoryNames:[Ljava/lang/String;

    const/16 v0, 0x5d

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Basic Latin"

    aput-object v1, v0, v7

    const/4 v1, 0x1

    const-string/jumbo v2, "Latin-1 Supplement"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Latin Extended-A"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Latin Extended-B"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "IPA Extensions"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "Spacing Modifier Letters"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Combining Diacritical Marks"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Greek"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Cyrillic"

    aput-object v2, v0, v1

    const-string/jumbo v1, "Armenian"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Hebrew"

    aput-object v1, v0, v4

    const/16 v1, 0xb

    const-string/jumbo v2, "Arabic"

    aput-object v2, v0, v1

    const-string/jumbo v1, "Syriac"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Thaana"

    aput-object v1, v0, v6

    const/16 v1, 0xe

    const-string/jumbo v2, "Devanagari"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "Bengali"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "Gurmukhi"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "Gujarati"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "Oriya"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "Tamil"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "Telugu"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "Kannada"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "Malayalam"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "Sinhala"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "Thai"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "Lao"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "Tibetan"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "Myanmar"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "Georgian"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "Hangul Jamo"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "Ethiopic"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "Cherokee"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "Unified Canadian Aboriginal Syllabics"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "Ogham"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "Runic"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "Khmer"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "Mongolian"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "Latin Extended Additional"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "Greek Extended"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "General Punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "Superscripts and Subscripts"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "Currency Symbols"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "Combining Marks for Symbols"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "Letterlike Symbols"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "Number Forms"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "Arrows"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "Mathematical Operators"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "Miscellaneous Technical"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "Control Pictures"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "Optical Character Recognition"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "Enclosed Alphanumerics"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "Box Drawing"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "Block Elements"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "Geometric Shapes"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "Miscellaneous Symbols"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "Dingbats"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "Braille Patterns"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "CJK Radicals Supplement"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "Kangxi Radicals"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "Ideographic Description Characters"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "CJK Symbols and Punctuation"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "Hiragana"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "Katakana"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "Bopomofo"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "Hangul Compatibility Jamo"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "Kanbun"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "Bopomofo Extended"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "Enclosed CJK Letters and Months"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "CJK Compatibility"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "CJK Unified Ideographs Extension A"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "CJK Unified Ideographs"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "Yi Syllables"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "Yi Radicals"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "Hangul Syllables"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "Private Use"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "CJK Compatibility Ideographs"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "Alphabetic Presentation Forms"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "Arabic Presentation Forms-A"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "Combining Half Marks"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "CJK Compatibility Forms"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "Small Form Variants"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "Arabic Presentation Forms-B"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "Specials"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "Halfwidth and Fullwidth Forms"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "Old Italic"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "Deseret"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "Byzantine Musical Symbols"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "Musical Symbols"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "Mathematical Alphanumeric Symbols"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "CJK Unified Ideographs Extension B"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "CJK Compatibility Ideographs Supplement"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "Tags"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->blockNames:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [I

    const v1, 0x10300

    aput v1, v0, v7

    const v1, 0x1032f

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    const v2, 0x10330

    aput v2, v0, v1

    const v1, 0x1034f

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    const v2, 0x10400

    aput v2, v0, v1

    const v1, 0x1044f

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v1, 0x6

    const v2, 0x1d000

    aput v2, v0, v1

    const v1, 0x1d0ff

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x8

    const v2, 0x1d100

    aput v2, v0, v1

    const v1, 0x1d1ff

    aput v1, v0, v3

    const v1, 0x1d400

    aput v1, v0, v4

    const v1, 0x1d7ff

    const/16 v2, 0xb

    aput v1, v0, v2

    const/high16 v1, 0x20000

    aput v1, v0, v5

    const v1, 0x2a6d6

    aput v1, v0, v6

    const/16 v1, 0xe

    const v2, 0x2f800

    aput v2, v0, v1

    const v1, 0x2fa1f

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0x10

    const/high16 v2, 0xe0000

    aput v2, v0, v1

    const v1, 0xe007f

    const/16 v2, 0x11

    aput v1, v0, v2

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonBMPBlockRanges:[I

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonxs:Ljava/util/Hashtable;

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_grapheme:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_ccs:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    return-void
.end method

.method static complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1

    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method private static createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;
    .locals 2

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;-><init>(II)V

    return-object v0
.end method

.method static createBackReference(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;
    .locals 3

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {v0, v2, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method static createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;
    .locals 2

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;-><init>(II)V

    return-object v0
.end method

.method static createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;
    .locals 2

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;-><init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;)V

    return-object v0
.end method

.method static createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;
    .locals 1

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;-><init>(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    return-object v0
.end method

.method static createConcat()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;
    .locals 2

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;-><init>(I)V

    return-object v0
.end method

.method static createCondition(ILmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;
    .locals 1

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;

    invoke-direct {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;-><init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    return-object v0
.end method

.method static createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_empty:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method static createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;
    .locals 2

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;-><init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;I)V

    return-object v0
.end method

.method static createModifierGroup(Lmf/org/apache/xerces/impl/xpath/regex/Token;II)Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;
    .locals 1

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;-><init>(Lmf/org/apache/xerces/impl/xpath/regex/Token;II)V

    return-object v0
.end method

.method static createNGClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;
    .locals 2

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;-><init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;)V

    return-object v0
.end method

.method static createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 2

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;-><init>(I)V

    return-object v0
.end method

.method static createParen(Lmf/org/apache/xerces/impl/xpath/regex/Token;I)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;
    .locals 2

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;-><init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;I)V

    return-object v0
.end method

.method static createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 2

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;-><init>(I)V

    return-object v0
.end method

.method static createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;
    .locals 3

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method static createUnion()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;
    .locals 2

    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->tokens:I

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;-><init>(I)V

    return-object v0
.end method

.method static declared-synchronized getCombiningCharacterSequence()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 4

    const-class v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_ccs:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-nez v1, :cond_0

    const-string/jumbo v1, "M"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    const-string/jumbo v1, "M"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_ccs:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_ccs:Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_1
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_ccs:Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized getGraphemePattern()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 9

    const-class v7, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_grapheme:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-nez v6, :cond_0

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    const-string/jumbo v6, "ASSIGNED"

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const-string/jumbo v6, "M"

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const-string/jumbo v6, "C"

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v5

    const/4 v3, 0x0

    :goto_0
    const-string/jumbo v6, "\u094d\u09cd\u0a4d\u0acd\u0b4d\u0bcd\u0c4d\u0ccd\u0d4d\u0e3a\u0f84"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    invoke-virtual {v5, v3, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_grapheme:Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v6

    :cond_1
    :try_start_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    const-string/jumbo v6, "M"

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v6

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/16 v6, 0x1160

    const/16 v8, 0x11ff

    invoke-virtual {v1, v6, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    const v6, 0xff9e

    const v8, 0xff9f

    invoke-virtual {v1, v6, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createUnion()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v4

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_empty:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createUnion()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v2

    const-string/jumbo v6, "L"

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v6

    invoke-static {v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    move-result-object v6

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v2

    invoke-static {v4, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    move-result-object v2

    sput-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_grapheme:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    sget-object v6, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_grapheme:Lmf/org/apache/xerces/impl/xpath/regex/Token;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-object v6

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method protected static getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 26

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    invoke-virtual/range {v23 .. v23}, Ljava/util/Hashtable;->size()I

    move-result v23

    if-eqz v23, :cond_0

    :goto_0
    if-nez p1, :cond_13

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-object/from16 v21, v23

    :goto_1
    return-object v21

    :cond_0
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    monitor-enter v3

    :try_start_0
    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categoryNames:[Ljava/lang/String;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-object/from16 v18, v0

    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v7, v0, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v23

    aput-object v23, v18, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_3
    const/high16 v23, 0x10000

    move/from16 v0, v23

    if-ge v7, v0, :cond_8

    int-to-char v0, v7

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->getType(C)I

    move-result v22

    const/16 v23, 0x15

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    :cond_2
    const/16 v23, 0xab

    move/from16 v0, v23

    if-ne v7, v0, :cond_6

    :cond_3
    const/16 v22, 0x1d

    :goto_4
    const/16 v23, 0xbb

    move/from16 v0, v23

    if-ne v7, v0, :cond_7

    :cond_4
    const/16 v22, 0x1e

    :goto_5
    aget-object v23, v18, v22

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    packed-switch v22, :pswitch_data_0

    :pswitch_0
    new-instance v23, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v25, "mf.org.apache.xerces.utils.regex.Token#getRange(): Unknown Unicode category: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    :catchall_0
    move-exception v23

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    :cond_5
    const/16 v23, 0x16

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    goto :goto_5

    :cond_6
    const/16 v23, 0x2018

    move/from16 v0, v23

    if-eq v7, v0, :cond_3

    const/16 v23, 0x201b

    move/from16 v0, v23

    if-eq v7, v0, :cond_3

    const/16 v23, 0x201c

    move/from16 v0, v23

    if-eq v7, v0, :cond_3

    const/16 v23, 0x201f

    move/from16 v0, v23

    if-eq v7, v0, :cond_3

    const/16 v23, 0x2039

    move/from16 v0, v23

    if-eq v7, v0, :cond_3

    goto :goto_4

    :cond_7
    const/16 v23, 0x2019

    move/from16 v0, v23

    if-eq v7, v0, :cond_4

    const/16 v23, 0x201d

    move/from16 v0, v23

    if-eq v7, v0, :cond_4

    const/16 v23, 0x203a

    move/from16 v0, v23

    if-eq v7, v0, :cond_4

    goto :goto_5

    :pswitch_1
    const/16 v22, 0x1f

    :goto_6
    :try_start_1
    aget-object v23, v18, v22

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :pswitch_2
    const/16 v22, 0x20

    goto :goto_6

    :pswitch_3
    const/16 v22, 0x21

    goto :goto_6

    :pswitch_4
    const/16 v22, 0x22

    goto :goto_6

    :pswitch_5
    const/16 v22, 0x23

    goto :goto_6

    :pswitch_6
    const/16 v22, 0x24

    goto :goto_6

    :pswitch_7
    const/16 v22, 0x25

    goto :goto_6

    :cond_8
    const/16 v23, 0x0

    aget-object v23, v18, v23

    const/high16 v24, 0x10000

    const v25, 0x10ffff

    invoke-virtual/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    const/4 v7, 0x0

    :goto_7
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v7, v0, :cond_b

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categoryNames:[Ljava/lang/String;

    aget-object v23, v23, v7

    if-nez v23, :cond_9

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_9
    if-eqz v7, :cond_a

    :goto_9
    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    sget-object v24, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categoryNames:[Ljava/lang/String;

    aget-object v24, v24, v7

    aget-object v25, v18, v7

    invoke-virtual/range {v23 .. v25}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    sget-object v24, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categoryNames:[Ljava/lang/String;

    aget-object v24, v24, v7

    aget-object v25, v18, v7

    invoke-static/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_a
    aget-object v23, v18, v7

    const/high16 v24, 0x10000

    const v25, 0x10ffff

    invoke-virtual/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    goto :goto_9

    :cond_b
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v23, 0x32

    move/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v7, 0x0

    :goto_a
    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->blockNames:[Ljava/lang/String;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v7, v0, :cond_12

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v17

    const/16 v23, 0x54

    move/from16 v0, v23

    if-lt v7, v0, :cond_d

    add-int/lit8 v23, v7, -0x54

    mul-int/lit8 v15, v23, 0x2

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonBMPBlockRanges:[I

    aget v23, v23, v15

    sget-object v24, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonBMPBlockRanges:[I

    add-int/lit8 v25, v15, 0x1

    aget v24, v24, v25

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    :goto_b
    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->blockNames:[Ljava/lang/String;

    aget-object v16, v23, v7

    const-string/jumbo v23, "Specials"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_e

    :goto_c
    const-string/jumbo v23, "Private Use"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_f

    :goto_d
    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string/jumbo v23, "Is"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v23, 0x20

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    if-gez v23, :cond_10

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    :cond_d
    mul-int/lit8 v15, v7, 0x2

    const-string/jumbo v23, "\u0000\u007f\u0080\u00ff\u0100\u017f\u0180\u024f\u0250\u02af\u02b0\u02ff\u0300\u036f\u0370\u03ff\u0400\u04ff\u0530\u058f\u0590\u05ff\u0600\u06ff\u0700\u074f\u0780\u07bf\u0900\u097f\u0980\u09ff\u0a00\u0a7f\u0a80\u0aff\u0b00\u0b7f\u0b80\u0bff\u0c00\u0c7f\u0c80\u0cff\u0d00\u0d7f\u0d80\u0dff\u0e00\u0e7f\u0e80\u0eff\u0f00\u0fff\u1000\u109f\u10a0\u10ff\u1100\u11ff\u1200\u137f\u13a0\u13ff\u1400\u167f\u1680\u169f\u16a0\u16ff\u1780\u17ff\u1800\u18af\u1e00\u1eff\u1f00\u1fff\u2000\u206f\u2070\u209f\u20a0\u20cf\u20d0\u20ff\u2100\u214f\u2150\u218f\u2190\u21ff\u2200\u22ff\u2300\u23ff\u2400\u243f\u2440\u245f\u2460\u24ff\u2500\u257f\u2580\u259f\u25a0\u25ff\u2600\u26ff\u2700\u27bf\u2800\u28ff\u2e80\u2eff\u2f00\u2fdf\u2ff0\u2fff\u3000\u303f\u3040\u309f\u30a0\u30ff\u3100\u312f\u3130\u318f\u3190\u319f\u31a0\u31bf\u3200\u32ff\u3300\u33ff\u3400\u4db5\u4e00\u9fff\ua000\ua48f\ua490\ua4cf\uac00\ud7a3\ue000\uf8ff\uf900\ufaff\ufb00\ufb4f\ufb50\ufdff\ufe20\ufe2f\ufe30\ufe4f\ufe50\ufe6f\ufe70\ufefe\ufeff\ufeff\uff00\uffef"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v20

    add-int/lit8 v23, v15, 0x1

    const-string/jumbo v24, "\u0000\u007f\u0080\u00ff\u0100\u017f\u0180\u024f\u0250\u02af\u02b0\u02ff\u0300\u036f\u0370\u03ff\u0400\u04ff\u0530\u058f\u0590\u05ff\u0600\u06ff\u0700\u074f\u0780\u07bf\u0900\u097f\u0980\u09ff\u0a00\u0a7f\u0a80\u0aff\u0b00\u0b7f\u0b80\u0bff\u0c00\u0c7f\u0c80\u0cff\u0d00\u0d7f\u0d80\u0dff\u0e00\u0e7f\u0e80\u0eff\u0f00\u0fff\u1000\u109f\u10a0\u10ff\u1100\u11ff\u1200\u137f\u13a0\u13ff\u1400\u167f\u1680\u169f\u16a0\u16ff\u1780\u17ff\u1800\u18af\u1e00\u1eff\u1f00\u1fff\u2000\u206f\u2070\u209f\u20a0\u20cf\u20d0\u20ff\u2100\u214f\u2150\u218f\u2190\u21ff\u2200\u22ff\u2300\u23ff\u2400\u243f\u2440\u245f\u2460\u24ff\u2500\u257f\u2580\u259f\u25a0\u25ff\u2600\u26ff\u2700\u27bf\u2800\u28ff\u2e80\u2eff\u2f00\u2fdf\u2ff0\u2fff\u3000\u303f\u3040\u309f\u30a0\u30ff\u3100\u312f\u3130\u318f\u3190\u319f\u31a0\u31bf\u3200\u32ff\u3300\u33ff\u3400\u4db5\u4e00\u9fff\ua000\ua48f\ua490\ua4cf\uac00\ud7a3\ue000\uf8ff\uf900\ufaff\ufb00\ufb4f\ufb50\ufdff\ufe20\ufe2f\ufe30\ufe4f\ufe50\ufe6f\ufe70\ufefe\ufeff\ufeff\uff00\uffef"

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    goto/16 :goto_b

    :cond_e
    const v23, 0xfff0

    const v24, 0xfffd

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    goto/16 :goto_c

    :cond_f
    const/high16 v23, 0xf0000

    const v24, 0xffffd

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    const/high16 v23, 0x100000

    const v24, 0x10fffd

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    goto/16 :goto_d

    :cond_10
    const/4 v6, 0x0

    :goto_e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v6, v0, :cond_c

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x20

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_11
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_12
    const-string/jumbo v23, "ASSIGNED"

    const-string/jumbo v24, "Cn"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "UNASSIGNED"

    const-string/jumbo v24, "Cn"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v4

    const/16 v23, 0x0

    const v24, 0x10ffff

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    const-string/jumbo v24, "ALL"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v24

    const-string/jumbo v25, "ALL"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v23, "ASSIGNED"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "UNASSIGNED"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "ALL"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v9

    const/16 v23, 0x1

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/16 v23, 0x2

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/16 v23, 0x5

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    const-string/jumbo v24, "IsAlpha"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-static {v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v24

    const-string/jumbo v25, "IsAlpha"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v23, "IsAlpha"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v8

    invoke-virtual {v8, v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/16 v23, 0x9

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    const-string/jumbo v24, "IsAlnum"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-static {v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v24

    const-string/jumbo v25, "IsAlnum"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v23, "IsAlnum"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v12

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/16 v23, 0x22

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    const-string/jumbo v24, "IsSpace"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-static {v12}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v24

    const-string/jumbo v25, "IsSpace"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v23, "IsSpace"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v13

    invoke-virtual {v13, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/16 v23, 0x5f

    const/16 v24, 0x5f

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    const-string/jumbo v24, "IsWord"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-static {v13}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v24

    const-string/jumbo v25, "IsWord"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v23, "IsWord"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v10

    const/16 v23, 0x0

    const/16 v24, 0x7f

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    const-string/jumbo v24, "IsASCII"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-static {v10}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v24

    const-string/jumbo v25, "IsASCII"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v23, "IsASCII"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v11

    const/16 v23, 0x23

    aget-object v23, v18, v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/16 v23, 0x20

    const/16 v24, 0x20

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    invoke-static {v11}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v24

    const-string/jumbo v25, "IsGraph"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    const-string/jumbo v24, "IsGraph"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v23, "IsGraph"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v14

    const/16 v23, 0x30

    const/16 v24, 0x39

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    const/16 v23, 0x41

    const/16 v24, 0x46

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    const/16 v23, 0x61

    const/16 v24, 0x66

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addRange(II)V

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    invoke-static {v14}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v24

    const-string/jumbo v25, "IsXDigit"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    const-string/jumbo v24, "IsXDigit"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v23, "IsXDigit"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "IsDigit"

    const-string/jumbo v24, "Nd"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "IsUpper"

    const-string/jumbo v24, "Lu"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "IsLower"

    const-string/jumbo v24, "Ll"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "IsCntrl"

    const-string/jumbo v24, "C"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "IsPrint"

    const-string/jumbo v24, "C"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "IsPunct"

    const-string/jumbo v24, "P"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "IsDigit"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "IsUpper"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "IsLower"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "IsCntrl"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "IsPrint"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "IsPunct"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "alpha"

    const-string/jumbo v24, "IsAlpha"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "alnum"

    const-string/jumbo v24, "IsAlnum"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "ascii"

    const-string/jumbo v24, "IsASCII"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "cntrl"

    const-string/jumbo v24, "IsCntrl"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "digit"

    const-string/jumbo v24, "IsDigit"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "graph"

    const-string/jumbo v24, "IsGraph"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "lower"

    const-string/jumbo v24, "IsLower"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "print"

    const-string/jumbo v24, "IsPrint"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "punct"

    const-string/jumbo v24, "IsPunct"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "space"

    const-string/jumbo v24, "IsSpace"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "upper"

    const-string/jumbo v24, "IsUpper"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "word"

    const-string/jumbo v24, "IsWord"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "xdigit"

    const-string/jumbo v24, "IsXDigit"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v23, "alpha"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "alnum"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "ascii"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "cntrl"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "digit"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "graph"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "lower"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "print"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "punct"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "space"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "upper"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "word"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    const-string/jumbo v23, "xdigit"

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->registerNonXS(Ljava/lang/String;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_13
    sget-object v23, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-object/from16 v21, v23

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method protected static getRange(Ljava/lang/String;ZZ)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 2

    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v0, :cond_0

    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->isRegisterNonXS(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isRegisterNonXS(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonxs:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonxs:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final isSet(II)Z
    .locals 1

    and-int v0, p0, p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private final isShorterThan(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Z
    .locals 5

    const/16 v4, 0xa

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eq v2, v4, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Internal Error: Illegal type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eq v2, v4, :cond_2

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Internal Error: Illegal type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    return v3

    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method protected static registerNonXS(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonxs:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonxs:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->nonxs:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method private static setAlias(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-nez p2, :cond_0

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->categories2:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addRange(II)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I
    .locals 12

    iget v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Token#analyzeHeadCharacter(): Invalid Type: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :pswitch_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v9

    if-ge v4, v9, :cond_0

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return v5

    :pswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v6

    const/4 v9, 0x2

    if-eq v6, v9, :cond_3

    if-eqz v6, :cond_2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    return v9

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    :goto_3
    return v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    :pswitch_3
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v7

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    const/4 v9, 0x2

    if-eq v7, v9, :cond_7

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_8

    if-nez v7, :cond_9

    :cond_5
    const/4 v9, 0x0

    :goto_4
    return v9

    :cond_6
    const/4 v9, 0x0

    return v9

    :cond_7
    return v7

    :cond_8
    return v8

    :cond_9
    if-eqz v8, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :pswitch_4
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    const/4 v9, 0x0

    return v9

    :pswitch_5
    const/4 v9, 0x0

    return v9

    :pswitch_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v0

    invoke-virtual {p1, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    const/high16 v9, 0x10000

    if-lt v0, v9, :cond_b

    :cond_a
    :goto_5
    const/4 v9, 0x1

    return v9

    :cond_b
    const/4 v9, 0x2

    invoke-static {p2, v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->isSet(II)Z

    move-result v9

    if-eqz v9, :cond_a

    int-to-char v9, v0

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {p1, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    int-to-char v9, v0

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {p1, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto :goto_5

    :pswitch_7
    const/4 v9, 0x2

    return v9

    :pswitch_8
    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/4 v9, 0x1

    return v9

    :pswitch_9
    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v9

    invoke-virtual {p1, v9}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/4 v9, 0x1

    return v9

    :pswitch_a
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v9

    return v9

    :pswitch_b
    move-object v9, p0

    check-cast v9, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptions()I

    move-result v9

    or-int/2addr p2, v9

    move-object v9, p0

    check-cast v9, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptionsMask()I

    move-result v9

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr p2, v9

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v9

    return v9

    :pswitch_c
    const/4 v9, 0x0

    const v10, 0x10ffff

    invoke-virtual {p1, v9, v10}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    const/4 v9, 0x2

    return v9

    :pswitch_d
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v9

    if-nez v9, :cond_e

    :cond_c
    :goto_6
    invoke-virtual {p1, v2, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    const/high16 v9, 0x10000

    if-lt v2, v9, :cond_f

    :cond_d
    :goto_7
    const/4 v9, 0x1

    return v9

    :cond_e
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_c

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isLowSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v2

    goto :goto_6

    :cond_f
    const/4 v9, 0x2

    invoke-static {p2, v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->isSet(II)Z

    move-result v9

    if-eqz v9, :cond_d

    int-to-char v9, v2

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {p1, v2, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    int-to-char v9, v2

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {p1, v2, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto :goto_7

    :pswitch_e
    const/4 v9, 0x0

    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_d
        :pswitch_7
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_a
        :pswitch_b
        :pswitch_3
    .end packed-switch
.end method

.method protected compactRanges()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final findFixedString(Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Token#findFixedString(): Invalid Type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->findFixedString(Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;I)V

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->options:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->isShorterThan(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_2
    iput-object v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iput v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->options:I

    return-void

    :pswitch_2
    iput-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-void

    :pswitch_3
    iput-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-void

    :pswitch_4
    iput-object p0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iput p2, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->options:I

    return-void

    :pswitch_5
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->findFixedString(Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;I)V

    return-void

    :pswitch_6
    move-object v3, p0

    check-cast v3, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptions()I

    move-result v3

    or-int/2addr p2, v3

    move-object v3, p0

    check-cast v3, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptionsMask()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr p2, v3

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->findFixedString(Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method getChar()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getMax()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method final getMaxLength()I
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Token#getMaxLength(): Invalid Type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_1
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMaxLength()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/2addr v4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v7

    :cond_1
    return v4

    :pswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMaxLength()I

    move-result v3

    const/4 v1, 0x1

    :goto_1
    if-gez v3, :cond_4

    :cond_2
    :goto_2
    return v3

    :cond_3
    return v6

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMaxLength()I

    move-result v2

    if-ltz v2, :cond_5

    if-gt v2, v3, :cond_6

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMax()I

    move-result v5

    if-gez v5, :cond_7

    return v7

    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMax()I

    move-result v5

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMaxLength()I

    move-result v6

    mul-int/2addr v5, v6

    return v5

    :pswitch_4
    return v6

    :pswitch_5
    const/4 v5, 0x1

    return v5

    :pswitch_6
    const/4 v5, 0x2

    return v5

    :pswitch_7
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMaxLength()I

    move-result v5

    return v5

    :pswitch_8
    return v7

    :pswitch_9
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    return v5

    :pswitch_a
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method

.method getMin()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method final getMinLength()I
    .locals 7

    const/4 v5, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Token#getMinLength(): Invalid Type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v4

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMinLength()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v3

    :pswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v4

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMinLength()I

    move-result v2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v4

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMinLength()I

    move-result v1

    if-lt v1, v2, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v5

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    return v2

    :pswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMin()I

    move-result v4

    if-gez v4, :cond_4

    return v5

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMin()I

    move-result v4

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMinLength()I

    move-result v5

    mul-int/2addr v4, v5

    return v4

    :pswitch_4
    return v5

    :pswitch_5
    const/4 v4, 0x1

    return v4

    :pswitch_6
    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v4

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMinLength()I

    move-result v4

    return v4

    :pswitch_7
    return v5

    :pswitch_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    return v4

    :pswitch_9
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method getParenNumber()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getReferenceNumber()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method match(I)Z
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NFAArrow#match(): Internal error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setMax(I)V
    .locals 0

    return-void
.end method

.method setMin(I)V
    .locals 0

    return-void
.end method

.method size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected sortRanges()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "."

    goto :goto_0
.end method
