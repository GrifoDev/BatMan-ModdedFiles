.class Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;
.super Ljava/lang/Object;
.source "XPointerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/xpointer/XPointerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# static fields
.field private static final CHARTYPE_CARRET:B = 0x3t

.field private static final CHARTYPE_CLOSE_PAREN:B = 0x5t

.field private static final CHARTYPE_COLON:B = 0xat

.field private static final CHARTYPE_DIGIT:B = 0x9t

.field private static final CHARTYPE_EQUAL:B = 0xbt

.field private static final CHARTYPE_INVALID:B = 0x0t

.field private static final CHARTYPE_LETTER:B = 0xct

.field private static final CHARTYPE_MINUS:B = 0x6t

.field private static final CHARTYPE_NONASCII:B = 0xet

.field private static final CHARTYPE_OPEN_PAREN:B = 0x4t

.field private static final CHARTYPE_OTHER:B = 0x1t

.field private static final CHARTYPE_PERIOD:B = 0x7t

.field private static final CHARTYPE_SLASH:B = 0x8t

.field private static final CHARTYPE_UNDERSCORE:B = 0xdt

.field private static final CHARTYPE_WHITESPACE:B = 0x2t


# instance fields
.field private final fASCIICharMap:[B

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;


# direct methods
.method private constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 7

    const/16 v6, 0xa

    const/4 v2, 0x2

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/16 v3, 0xc

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [B

    aput-byte v2, v0, v5

    aput-byte v2, v0, v6

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    aput-byte v4, v0, v1

    const/16 v1, 0x22

    aput-byte v4, v0, v1

    const/16 v1, 0x23

    aput-byte v4, v0, v1

    const/16 v1, 0x24

    aput-byte v4, v0, v1

    const/16 v1, 0x25

    aput-byte v4, v0, v1

    const/16 v1, 0x26

    aput-byte v4, v0, v1

    const/16 v1, 0x27

    aput-byte v4, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x28

    aput-byte v1, v0, v2

    const/4 v1, 0x5

    const/16 v2, 0x29

    aput-byte v1, v0, v2

    const/16 v1, 0x2a

    aput-byte v4, v0, v1

    const/16 v1, 0x2b

    aput-byte v4, v0, v1

    const/16 v1, 0x2c

    aput-byte v4, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x2d

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, 0x2e

    aput-byte v1, v0, v2

    const/16 v1, 0x8

    const/16 v2, 0x2f

    aput-byte v1, v0, v2

    const/16 v1, 0x30

    aput-byte v5, v0, v1

    const/16 v1, 0x31

    aput-byte v5, v0, v1

    const/16 v1, 0x32

    aput-byte v5, v0, v1

    const/16 v1, 0x33

    aput-byte v5, v0, v1

    const/16 v1, 0x34

    aput-byte v5, v0, v1

    const/16 v1, 0x35

    aput-byte v5, v0, v1

    const/16 v1, 0x36

    aput-byte v5, v0, v1

    const/16 v1, 0x37

    aput-byte v5, v0, v1

    const/16 v1, 0x38

    aput-byte v5, v0, v1

    const/16 v1, 0x39

    aput-byte v5, v0, v1

    const/16 v1, 0x3a

    aput-byte v6, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x3d

    aput-byte v1, v0, v2

    const/16 v1, 0x3e

    aput-byte v4, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    aput-byte v4, v0, v1

    const/16 v1, 0x41

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v3, v0, v1

    const/16 v1, 0x43

    aput-byte v3, v0, v1

    const/16 v1, 0x44

    aput-byte v3, v0, v1

    const/16 v1, 0x45

    aput-byte v3, v0, v1

    const/16 v1, 0x46

    aput-byte v3, v0, v1

    const/16 v1, 0x47

    aput-byte v3, v0, v1

    const/16 v1, 0x48

    aput-byte v3, v0, v1

    const/16 v1, 0x49

    aput-byte v3, v0, v1

    const/16 v1, 0x4a

    aput-byte v3, v0, v1

    const/16 v1, 0x4b

    aput-byte v3, v0, v1

    const/16 v1, 0x4c

    aput-byte v3, v0, v1

    const/16 v1, 0x4d

    aput-byte v3, v0, v1

    const/16 v1, 0x4e

    aput-byte v3, v0, v1

    const/16 v1, 0x4f

    aput-byte v3, v0, v1

    const/16 v1, 0x50

    aput-byte v3, v0, v1

    const/16 v1, 0x51

    aput-byte v3, v0, v1

    const/16 v1, 0x52

    aput-byte v3, v0, v1

    const/16 v1, 0x53

    aput-byte v3, v0, v1

    const/16 v1, 0x54

    aput-byte v3, v0, v1

    const/16 v1, 0x55

    aput-byte v3, v0, v1

    const/16 v1, 0x56

    aput-byte v3, v0, v1

    const/16 v1, 0x57

    aput-byte v3, v0, v1

    const/16 v1, 0x58

    aput-byte v3, v0, v1

    const/16 v1, 0x59

    aput-byte v3, v0, v1

    const/16 v1, 0x5a

    aput-byte v3, v0, v1

    const/16 v1, 0x5b

    aput-byte v4, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    aput-byte v4, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x5e

    aput-byte v1, v0, v2

    const/16 v1, 0xd

    const/16 v2, 0x5f

    aput-byte v1, v0, v2

    const/16 v1, 0x60

    aput-byte v4, v0, v1

    const/16 v1, 0x61

    aput-byte v3, v0, v1

    const/16 v1, 0x62

    aput-byte v3, v0, v1

    const/16 v1, 0x63

    aput-byte v3, v0, v1

    const/16 v1, 0x64

    aput-byte v3, v0, v1

    const/16 v1, 0x65

    aput-byte v3, v0, v1

    const/16 v1, 0x66

    aput-byte v3, v0, v1

    const/16 v1, 0x67

    aput-byte v3, v0, v1

    const/16 v1, 0x68

    aput-byte v3, v0, v1

    const/16 v1, 0x69

    aput-byte v3, v0, v1

    const/16 v1, 0x6a

    aput-byte v3, v0, v1

    const/16 v1, 0x6b

    aput-byte v3, v0, v1

    const/16 v1, 0x6c

    aput-byte v3, v0, v1

    const/16 v1, 0x6d

    aput-byte v3, v0, v1

    const/16 v1, 0x6e

    aput-byte v3, v0, v1

    const/16 v1, 0x6f

    aput-byte v3, v0, v1

    const/16 v1, 0x70

    aput-byte v3, v0, v1

    const/16 v1, 0x71

    aput-byte v3, v0, v1

    const/16 v1, 0x72

    aput-byte v3, v0, v1

    const/16 v1, 0x73

    aput-byte v3, v0, v1

    const/16 v1, 0x74

    aput-byte v3, v0, v1

    const/16 v1, 0x75

    aput-byte v3, v0, v1

    const/16 v1, 0x76

    aput-byte v3, v0, v1

    const/16 v1, 0x77

    aput-byte v3, v0, v1

    const/16 v1, 0x78

    aput-byte v3, v0, v1

    const/16 v1, 0x79

    aput-byte v3, v0, v1

    const/16 v1, 0x7a

    aput-byte v3, v0, v1

    const/16 v1, 0x7b

    aput-byte v4, v0, v1

    const/16 v1, 0x7c

    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    iput-object p2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;-><init>(Lmf/org/apache/xerces/xpointer/XPointerHandler;Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/16 v5, 0x80

    const/16 v2, 0xe

    const/4 v4, 0x5

    :goto_0
    if-eq p4, p3, :cond_a

    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v5, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v1, v3, v0

    :goto_1
    if-eq v1, v7, :cond_1

    if-eq v1, v4, :cond_5

    if-eq v1, v6, :cond_6

    int-to-char v3, v0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I

    move-result p4

    if-eq p4, p3, :cond_2

    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v5, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v1, v3, v0

    :goto_2
    if-ne v1, v4, :cond_4

    int-to-char v3, v0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return p4

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    return p3

    :cond_5
    return p4

    :cond_6
    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v5, :cond_8

    iget-object v3, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v1, v3, v0

    :goto_3
    if-ne v1, v6, :cond_9

    :cond_7
    int-to-char v3, v0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_3

    :cond_9
    if-eq v1, v7, :cond_7

    if-eq v1, v4, :cond_7

    :cond_a
    return p4
.end method

.method private scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;II)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_11

    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    const/16 v15, 0x20

    if-ne v4, v15, :cond_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_2

    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1

    :cond_1
    const/16 v15, 0xa

    if-eq v4, v15, :cond_0

    const/16 v15, 0x9

    if-eq v4, v15, :cond_0

    const/16 v15, 0xd

    if-eq v4, v15, :cond_0

    :cond_2
    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_11

    const/16 v15, 0x80

    if-ge v4, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v5, v15, v4

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v11, :cond_5

    if-gtz v11, :cond_e

    :cond_3
    const/4 v15, 0x0

    return v15

    :cond_4
    const/16 v5, 0xe

    goto :goto_2

    :pswitch_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_5
    move/from16 v10, p4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result p4

    move/from16 v0, p4

    if-eq v0, v10, :cond_6

    move/from16 v0, p4

    move/from16 v1, p5

    if-lt v0, v1, :cond_7

    const/4 v4, -0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v12, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/16 v15, 0x3a

    if-eq v4, v15, :cond_8

    :goto_4
    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_c

    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_d

    :goto_5
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v16, "InvalidShortHandPointer"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p3, v17, v18

    invoke-static/range {v15 .. v17}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x0

    return v15

    :cond_7
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :cond_8
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_9

    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object v12, v9

    move/from16 v10, p4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result p4

    move/from16 v0, p4

    if-eq v0, v10, :cond_a

    move/from16 v0, p4

    move/from16 v1, p5

    if-lt v0, v1, :cond_b

    const/4 v4, -0x1

    :goto_6
    const/4 v8, 0x1

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_9
    const/4 v15, 0x0

    return v15

    :cond_a
    const/4 v15, 0x0

    return v15

    :cond_b
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_6

    :cond_c
    const/4 v15, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_5

    :cond_d
    const/4 v15, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_e
    if-nez v6, :cond_3

    if-eqz v9, :cond_3

    move/from16 v7, p4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p4

    invoke-direct {v0, v1, v14, v2, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->scanData(Ljava/lang/String;Ljava/lang/StringBuffer;II)I

    move-result p4

    move/from16 v0, p4

    if-eq v0, v7, :cond_f

    move/from16 v0, p4

    move/from16 v1, p5

    if-lt v0, v1, :cond_10

    const/4 v4, -0x1

    :goto_7
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->this$0:Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v16, "InvalidSchemeDataInXPointer"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p3, v17, v18

    invoke-static/range {v15 .. v17}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->access$0(Lmf/org/apache/xerces/xpointer/XPointerHandler;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x0

    return v15

    :cond_10
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_7

    :cond_11
    const/4 v15, 0x1

    return v15

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private scanNCName(Ljava/lang/String;II)I
    .locals 6

    const/16 v5, 0x80

    const/16 v4, 0xd

    const/16 v3, 0xc

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v5, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v1, v2, v0

    if-ne v1, v3, :cond_3

    :cond_0
    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p2, :cond_1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v5, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/xpointer/XPointerHandler$Scanner;->fASCIICharMap:[B

    aget-byte v1, v2, v0

    if-eq v1, v3, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    if-eq v1, v4, :cond_0

    :cond_1
    return p3

    :cond_2
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v2

    if-nez v2, :cond_0

    return p3

    :cond_3
    if-eq v1, v4, :cond_0

    return p3

    :cond_4
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-static {p1, p2}, Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;->access$1(Lmf/org/apache/xerces/xpointer/XPointerHandler$Tokens;I)V

    return-void
.end method
