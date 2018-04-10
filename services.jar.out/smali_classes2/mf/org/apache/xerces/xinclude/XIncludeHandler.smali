.class public Lmf/org/apache/xerces/xinclude/XIncludeHandler;
.super Ljava/lang/Object;
.source "XIncludeHandler.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lmf/org/apache/xerces/xni/parser/XMLDTDFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;,
        Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;
    }
.end annotation


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final BUFFER_SIZE:Ljava/lang/String; = "http://apache.org/xml/properties/input-buffer-size"

.field public static final CURRENT_BASE_URI:Ljava/lang/String; = "currentBaseURI"

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field public static final HTTP_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HTTP_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final INITIAL_SIZE:I = 0x8

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field private static final NEW_NS_ATTR_QNAME:Lmf/org/apache/xerces/xni/QName;

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final STATE_EXPECT_FALLBACK:I = 0x3

.field private static final STATE_IGNORE:I = 0x2

.field private static final STATE_NORMAL_PROCESSING:I = 0x1

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_HREF:Ljava/lang/String;

.field public static final XINCLUDE_ATTR_PARSE:Ljava/lang/String;

.field private static final XINCLUDE_BASE:Ljava/lang/String;

.field public static final XINCLUDE_DEFAULT_CONFIGURATION:Ljava/lang/String; = "mf.org.apache.xerces.parsers.XIncludeParserConfiguration"

.field public static final XINCLUDE_FALLBACK:Ljava/lang/String;

.field protected static final XINCLUDE_FIXUP_BASE_URIS:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-base-uris"

.field protected static final XINCLUDE_FIXUP_LANGUAGE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude/fixup-language"

.field public static final XINCLUDE_INCLUDE:Ljava/lang/String;

.field public static final XINCLUDE_INCLUDED:Ljava/lang/String;

.field private static final XINCLUDE_LANG:Ljava/lang/String;

.field public static final XINCLUDE_NS_URI:Ljava/lang/String;

.field public static final XINCLUDE_PARSE_TEXT:Ljava/lang/String;

.field public static final XINCLUDE_PARSE_XML:Ljava/lang/String;

.field private static final XML_BASE_QNAME:Lmf/org/apache/xerces/xni/QName;

.field private static final XML_LANG_QNAME:Lmf/org/apache/xerces/xni/QName;

.field public static final XPOINTER:Ljava/lang/String; = "xpointer"

.field private static final gAfterEscaping1:[C

.field private static final gAfterEscaping2:[C

.field private static final gHexChs:[C

.field private static final gNeedEscaping:[Z


# instance fields
.field protected final fBaseURI:Ljava/util/Stack;

.field protected final fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

.field protected fBufferSize:I

.field protected fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

.field protected final fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

.field protected fCurrentLanguage:Ljava/lang/String;

.field protected fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

.field protected fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

.field private fDepth:I

.field protected fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected final fExpandedSystemID:Ljava/util/Stack;

.field private fFixupBaseURIs:Z

.field private fFixupLanguage:Z

.field fHasIncludeReportedContent:Z

.field protected fHrefFromParent:Ljava/lang/String;

.field private fInDTD:Z

.field private fIsXML11:Z

.field protected final fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

.field protected final fLanguageStack:Ljava/util/Stack;

.field protected final fLiteralSystemID:Ljava/util/Stack;

.field protected fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

.field private fNeedCopyFeatures:Z

.field private final fNotations:Ljava/util/ArrayList;

.field protected fParentRelativeURI:Ljava/lang/String;

.field protected fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

.field private fResultDepth:I

.field private fSawFallback:[Z

.field private fSawInclude:[Z

.field protected fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

.field private fSeenRootElement:Z

.field private fSendUEAndNotationEvents:Z

.field protected fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

.field private fState:[I

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fUnparsedEntities:Ljava/util/ArrayList;

.field protected fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

.field protected fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

.field protected fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

.field protected fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

.field protected fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

.field protected fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

.field protected fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    const-string/jumbo v4, "http://www.w3.org/2001/XInclude"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_NS_URI:Ljava/lang/String;

    const-string/jumbo v4, "include"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    const-string/jumbo v4, "fallback"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_FALLBACK:Ljava/lang/String;

    const-string/jumbo v4, "xml"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    const-string/jumbo v4, "text"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_TEXT:Ljava/lang/String;

    const-string/jumbo v4, "href"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_HREF:Ljava/lang/String;

    const-string/jumbo v4, "parse"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_PARSE:Ljava/lang/String;

    const-string/jumbo v4, "encoding"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

    const-string/jumbo v4, "accept"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

    const-string/jumbo v4, "accept-language"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

    const-string/jumbo v4, "[included]"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDED:Ljava/lang/String;

    const-string/jumbo v4, "base"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_BASE:Ljava/lang/String;

    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_BASE:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_BASE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XML_BASE_QNAME:Lmf/org/apache/xerces/xni/QName;

    const-string/jumbo v4, "lang"

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_LANG:Ljava/lang/String;

    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_LANG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_LANG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XML_LANG_QNAME:Lmf/org/apache/xerces/xni/QName;

    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const-string/jumbo v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lmf/org/apache/xerces/xni/QName;

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    aput-object v5, v4, v11

    const-string/jumbo v5, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    aput-object v5, v4, v9

    const-string/jumbo v5, "http://apache.org/xml/features/xinclude/fixup-language"

    aput-object v5, v4, v12

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v11

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v9

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v12

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    new-array v4, v13, [Ljava/lang/String;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v5, v4, v11

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v5, v4, v9

    const-string/jumbo v5, "http://apache.org/xml/properties/security-manager"

    aput-object v5, v4, v12

    const-string/jumbo v5, "http://apache.org/xml/properties/input-buffer-size"

    aput-object v5, v4, v10

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    new-array v4, v13, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    const/16 v6, 0x800

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v10

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    const/16 v4, 0x80

    new-array v4, v4, [Z

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    const/16 v4, 0x80

    new-array v4, v4, [C

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    const/16 v4, 0x80

    new-array v4, v4, [C

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    const/16 v4, 0x10

    new-array v4, v4, [C

    const/16 v5, 0x30

    aput-char v5, v4, v11

    const/16 v5, 0x31

    aput-char v5, v4, v9

    const/16 v5, 0x32

    aput-char v5, v4, v12

    const/16 v5, 0x33

    aput-char v5, v4, v10

    const/16 v5, 0x34

    aput-char v5, v4, v13

    const/16 v5, 0x35

    const/4 v6, 0x5

    aput-char v5, v4, v6

    const/16 v5, 0x36

    const/4 v6, 0x6

    aput-char v5, v4, v6

    const/16 v5, 0x37

    const/4 v6, 0x7

    aput-char v5, v4, v6

    const/16 v5, 0x8

    const/16 v6, 0x38

    aput-char v6, v4, v5

    const/16 v5, 0x39

    const/16 v6, 0x9

    aput-char v5, v4, v6

    const/16 v5, 0x41

    const/16 v6, 0xa

    aput-char v5, v4, v6

    const/16 v5, 0x42

    const/16 v6, 0xb

    aput-char v5, v4, v6

    const/16 v5, 0x43

    const/16 v6, 0xc

    aput-char v5, v4, v6

    const/16 v5, 0x44

    const/16 v6, 0xd

    aput-char v5, v4, v6

    const/16 v5, 0x45

    const/16 v6, 0xe

    aput-char v5, v4, v6

    const/16 v5, 0x46

    const/16 v6, 0xf

    aput-char v5, v4, v6

    sput-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    const/16 v4, 0xa

    new-array v1, v4, [C

    const/16 v4, 0x20

    aput-char v4, v1, v11

    const/16 v4, 0x3c

    aput-char v4, v1, v9

    const/16 v4, 0x3e

    aput-char v4, v1, v12

    const/16 v4, 0x22

    aput-char v4, v1, v10

    const/16 v4, 0x7b

    aput-char v4, v1, v13

    const/16 v4, 0x7d

    const/4 v5, 0x5

    aput-char v4, v1, v5

    const/16 v4, 0x7c

    const/4 v5, 0x6

    aput-char v4, v1, v5

    const/16 v4, 0x5c

    const/4 v5, 0x7

    aput-char v4, v1, v5

    const/16 v4, 0x5e

    const/16 v5, 0x8

    aput-char v4, v1, v5

    const/16 v4, 0x60

    const/16 v5, 0x9

    aput-char v4, v1, v5

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v0, v1, v2

    sget-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    aput-boolean v9, v4, v0

    sget-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    sget-object v5, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    shr-int/lit8 v6, v0, 0x4

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v0

    sget-object v4, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    sget-object v5, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    iput-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    new-instance v0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    iput-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    iput-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    iput-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aput-boolean v3, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aput-boolean v3, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aput v2, v0, v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    new-instance v0, Lmf/org/apache/xerces/util/IntStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/IntStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    new-instance v0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    new-instance v0, Lmf/org/apache/xerces/util/IntStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/IntStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    iput-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    return-void
.end method

.method private checkMultipleRootElements()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRootElementProcessed()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setRootElementProcessed(Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "MultipleRootElements"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 4

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v0, v2, v3

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v2, v2, v1

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "ContentIllegalAtTopLevel"

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    return-void

    :cond_1
    return-void
.end method

.method private copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V
    .locals 4

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v3

    invoke-virtual {p4, v1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->addRecognizedFeatures([Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p3, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p4, v0, v1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 4

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    :try_start_0
    invoke-interface {p4, v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/util/HTTPInputSource;

    invoke-direct {v0, p1, p2, p3}, Lmf/org/apache/xerces/util/HTTPInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_2

    :cond_0
    :goto_0
    if-nez p5, :cond_3

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "Accept"

    invoke-virtual {v0, v1, p4}, Lmf/org/apache/xerces/util/HTTPInputSource;->setHTTPRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, "Accept-Language"

    invoke-virtual {v0, v1, p5}, Lmf/org/apache/xerces/util/HTTPInputSource;->setHTTPRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private escapeHref(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/16 v13, 0x7e

    const/16 v12, 0x20

    const/16 v11, 0x25

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v9, v8, 0x3

    invoke-direct {v1, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v13, :cond_2

    if-lt v3, v12, :cond_0

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    aget-boolean v9, v9, v3

    if-nez v9, :cond_1

    int-to-char v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    aget-char v9, v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    aget-char v9, v9, v3

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    if-lt v6, v8, :cond_4

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-ne v9, v8, :cond_12

    return-object p1

    :cond_4
    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_f

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ge v3, v12, :cond_9

    :cond_5
    const/16 v9, 0xa0

    if-ge v3, v9, :cond_b

    :cond_6
    const v9, 0xf900

    if-ge v3, v9, :cond_c

    :cond_7
    const v9, 0xfdf0

    if-ge v3, v9, :cond_d

    :goto_3
    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v9

    if-nez v9, :cond_e

    :cond_8
    :goto_4
    return-object p1

    :cond_9
    if-gt v3, v13, :cond_5

    :cond_a
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    const v9, 0xd7ff

    if-gt v3, v9, :cond_6

    goto :goto_5

    :cond_c
    const v9, 0xfdcf

    if-gt v3, v9, :cond_7

    goto :goto_5

    :cond_d
    const v9, 0xffef

    if-le v3, v9, :cond_a

    goto :goto_3

    :cond_e
    add-int/lit8 v7, v7, 0x1

    if-ge v7, v8, :cond_8

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v9

    if-eqz v9, :cond_8

    int-to-char v9, v3

    int-to-char v10, v4

    invoke-static {v9, v10}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v4

    const/high16 v9, 0xf0000

    if-ge v4, v9, :cond_8

    const v9, 0xffff

    and-int/2addr v9, v4

    const v10, 0xfffd

    if-le v9, v10, :cond_a

    goto :goto_4

    :cond_f
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    array-length v8, v2

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v8, :cond_3

    aget-byte v0, v2, v6

    if-ltz v0, :cond_10

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gNeedEscaping:[Z

    aget-boolean v9, v9, v0

    if-nez v9, :cond_11

    int-to-char v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :catch_0
    move-exception v5

    return-object p1

    :cond_10
    add-int/lit16 v3, v0, 0x100

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    shr-int/lit8 v10, v3, 0x4

    aget-char v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gHexChs:[C

    and-int/lit8 v10, v3, 0xf

    aget-char v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_11
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping1:[C

    aget-char v9, v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v9, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->gAfterEscaping2:[C

    aget-char v9, v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private getIncludeParentBaseURI()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getBaseURI(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentBaseURI()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getIncludeParentDepth()I
    .locals 3

    const/4 v2, 0x0

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_2
    return v2
.end method

.method private getIncludeParentLanguage()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getLanguage(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentLanguage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResultDepth()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    return v0
.end method

.method private getRootElementProcessed()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRootElementProcessed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    goto :goto_0
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private isValidInHTTPHeader(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    :cond_0
    return v3

    :cond_1
    const/16 v2, 0x7e

    if-gt v0, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private reportError(Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)V
    .locals 6

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xinclude"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    goto :goto_0
.end method

.method private scopeOfBaseURI(I)I
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/IntStack;->elementAt(I)I

    move-result v1

    if-le v1, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private scopeOfLanguage(I)I
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/IntStack;->elementAt(I)I

    move-result v1

    if-le v1, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 3

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    const-string/jumbo v2, "http://www.w3.org/TR/xinclude"

    invoke-virtual {v0, v2, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    goto :goto_0
.end method

.method private setRootElementProcessed(Z)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setRootElementProcessed(Z)V

    return-void

    :cond_0
    iput-boolean p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    return-void
.end method


# virtual methods
.method protected addNotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;-><init>()V

    iput-object p1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->systemId:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->publicId:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->baseURI:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->expandedSystemId:Ljava/lang/String;

    iput-object p3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addUnparsedEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;-><init>()V

    iput-object p1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->systemId:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->publicId:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->baseURI:Ljava/lang/String;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->expandedSystemId:Ljava/lang/String;

    iput-object p3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    iput-object p4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V

    goto :goto_0
.end method

.method protected checkAndSendNotation(Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkAndSendNotation(Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->isDuplicate(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "NonDuplicateNotation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v3, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->publicId:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->systemId:Ljava/lang/String;

    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->baseURI:Ljava/lang/String;

    iget-object v6, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->expandedSystemId:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, v6}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-virtual {p0, v3, v0, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->addNotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-boolean v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v3, v4, v0, v5}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected checkAndSendUnparsedEntity(Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkAndSendUnparsedEntity(Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->isDuplicate(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "NonDuplicateUnparsedEntity"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v3, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->publicId:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->systemId:Ljava/lang/String;

    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->baseURI:Ljava/lang/String;

    iget-object v6, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->expandedSystemId:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, v6}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-virtual {p0, v3, v0, v4, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->addUnparsedEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-boolean v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v4, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    iget-object v5, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    iget-object v6, p1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->augmentations:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v3, v4, v0, v5, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected checkNotation(Ljava/lang/String;)V
    .locals 3

    new-instance v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;

    invoke-direct {v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;-><init>()V

    iput-object p1, v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;->name:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkAndSendNotation(Lmf/org/apache/xerces/xinclude/XIncludeHandler$Notation;)V

    goto :goto_0
.end method

.method protected checkUnparsedEntity(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    invoke-direct {v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;-><init>()V

    iput-object p1, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->name:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;->notation:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkNotation(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkAndSendUnparsedEntity(Lmf/org/apache/xerces/xinclude/XIncludeHandler$UnparsedEntity;)V

    goto :goto_0
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected copyFeatures(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V
    .locals 2

    invoke-static {}, Lmf/org/apache/xerces/impl/Constants;->getXercesFeatures()Ljava/util/Enumeration;

    move-result-object v0

    const-string/jumbo v1, "http://apache.org/xml/features/"

    invoke-direct {p0, v0, v1, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/Constants;->getSAXFeatures()Ljava/util/Enumeration;

    move-result-object v0

    const-string/jumbo v1, "http://xml.org/sax/features/"

    invoke-direct {p0, v0, v1, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V

    return-void
.end method

.method protected copyFeatures(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 2

    invoke-static {}, Lmf/org/apache/xerces/impl/Constants;->getXercesFeatures()Ljava/util/Enumeration;

    move-result-object v0

    const-string/jumbo v1, "http://apache.org/xml/features/"

    invoke-direct {p0, v0, v1, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/Constants;->getSAXFeatures()Ljava/util/Enumeration;

    move-result-object v0

    const-string/jumbo v1, "http://xml.org/sax/features/"

    invoke-direct {p0, v0, v1, p1, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures1(Ljava/util/Enumeration;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v0

    if-eq v0, v4, :cond_3

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    :goto_0
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-nez v2, :cond_4

    :goto_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isIncludeElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isFallbackElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    if-eq v2, v6, :cond_c

    :cond_1
    :goto_2
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v2

    if-gtz v2, :cond_e

    :cond_2
    :goto_3
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    return-void

    :cond_3
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->handleIncludeElement(Lmf/org/apache/xerces/xni/XMLAttributes;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v2, "NoFallback"

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->handleFallbackElement()V

    goto :goto_2

    :cond_8
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_4
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v2

    if-nez v2, :cond_a

    :goto_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    if-ne v2, v6, :cond_1

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v2, :cond_b

    :goto_6
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;

    move-result-object p2

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2

    :cond_9
    const-string/jumbo v2, "IncludeChild"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    const-string/jumbo v2, "FallbackChild"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    goto :goto_6

    :cond_c
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v2, :cond_d

    :goto_7
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;

    move-result-object p2

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_2

    :cond_d
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    goto :goto_7

    :cond_e
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/IntStack;->peek()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->restoreBaseURI()V

    goto/16 :goto_3
.end method

.method public endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    if-eqz v0, :cond_2

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "RootElementRequired"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isIncludeElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isFallbackElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    if-eq v0, v3, :cond_6

    :cond_1
    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_2
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v0

    if-gtz v0, :cond_8

    :cond_3
    :goto_3
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    return-void

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "NoFallback"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_7
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->peek()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->restoreBaseURI()V

    goto :goto_2

    :cond_8
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->peek()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->restoreLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    goto :goto_3
.end method

.method public endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public getBaseURI(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->scopeOfBaseURI(I)I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getDTDSource()Lmf/org/apache/xerces/xni/parser/XMLDTDSource;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    return-object v0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->scopeOfLanguage(I)I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getRelativeBaseURI()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentDepth()I

    move-result v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRelativeURI(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1

    :goto_0
    if-eqz v4, :cond_2

    return-object v10

    :cond_0
    return-object v10

    :cond_1
    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v12}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_2
    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    if-eqz v12, :cond_4

    :goto_1
    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_5

    new-instance v0, Lmf/org/apache/xerces/util/URI;

    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-direct {v0, v12, v13}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    new-instance v11, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v11, v0, v10}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v2, v9}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getQueryString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v6

    if-eqz v8, :cond_8

    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    if-nez v7, :cond_9

    :goto_2
    if-nez v8, :cond_a

    :goto_3
    if-nez v6, :cond_b

    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_4
    iget-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v12}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRelativeBaseURI()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    goto :goto_1

    :cond_5
    return-object v10

    :cond_6
    return-object v10

    :cond_7
    invoke-virtual {v11}, Lmf/org/apache/xerces/util/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    return-object v12

    :cond_8
    if-nez v6, :cond_3

    return-object v7

    :cond_9
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_a
    const/16 v12, 0x3f

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_b
    const/16 v12, 0x23

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method public getRelativeURI(I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->scopeOfBaseURI(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v4

    if-eq v1, v4, :cond_0

    new-instance v2, Lmf/org/apache/xerces/util/URI;

    iget-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "file"

    invoke-direct {v2, v5, v4}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move-object v3, v2

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    new-instance v2, Lmf/org/apache/xerces/util/URI;

    iget-object v4, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    move-object v3, v2

    goto :goto_0

    :cond_0
    const-string/jumbo v4, ""

    return-object v4

    :cond_1
    invoke-virtual {v3}, Lmf/org/apache/xerces/util/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected getSawFallback(I)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    aget-boolean v0, v0, p1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getSawInclude(I)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    aget-boolean v0, v0, p1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getState()I
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aget v0, v0, v1

    return v0
.end method

.method protected getState(I)I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    aget v0, v0, p1

    return v0
.end method

.method protected handleFallbackElement()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawFallback(IZ)V

    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    :goto_2
    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "FallbackParent"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "MultipleFallbacks"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_2
.end method

.method protected handleIncludeElement(Lmf/org/apache/xerces/xni/XMLAttributes;)Z
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setSawInclude(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->setContextInvalid()V

    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_HREF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_PARSE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v2, "xpointer"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v36, :cond_7

    :goto_1
    if-eqz v28, :cond_8

    :goto_2
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    :cond_0
    :goto_3
    const/16 v29, 0x0

    :try_start_0
    new-instance v30, Lmf/org/apache/xerces/util/URI;

    const/4 v2, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual/range {v30 .. v30}, Lmf/org/apache/xerces/util/URI;->getFragment()Ljava/lang/String;
    :try_end_1
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_f

    move-result-object v2

    if-nez v2, :cond_c

    move-object/from16 v29, v30

    :goto_4
    if-nez v6, :cond_f

    :cond_1
    :goto_5
    if-nez v7, :cond_10

    :cond_2
    :goto_6
    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-nez v2, :cond_11

    :cond_3
    :goto_7
    if-eqz v31, :cond_14

    :goto_8
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_TEXT:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v36, v2, v3

    const-string/jumbo v3, "InvalidParseValue"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_9
    const/4 v2, 0x1

    return v2

    :cond_5
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "IncludeChild"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x1

    return v2

    :cond_7
    sget-object v36, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    goto :goto_1

    :cond_8
    sget-object v28, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    :cond_9
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_PARSE_XML:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v41, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-nez v2, :cond_b

    const/16 v32, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    const-string/jumbo v3, "XPointerStreamability"

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v2, v0, v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v28, v2, v3

    const/4 v3, 0x1

    aput-object v38, v2, v3

    const-string/jumbo v3, "XMLResourceError"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    return v2

    :cond_a
    const-string/jumbo v2, "XpointerMissing"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v32

    goto :goto_a

    :cond_c
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v28, v2, v3

    const-string/jumbo v3, "HrefFragmentIdentifierIllegal"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_f

    move-object/from16 v29, v30

    goto/16 :goto_4

    :catch_0
    move-exception v26

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->escapeHref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v28, v2, v3

    const-string/jumbo v3, "HrefSyntacticallyInvalid"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_d
    move-object/from16 v28, v35

    :try_start_3
    new-instance v30, Lmf/org/apache/xerces/util/URI;

    const/4 v2, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual/range {v30 .. v30}, Lmf/org/apache/xerces/util/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    move-object/from16 v29, v30

    goto/16 :goto_4

    :cond_e
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v35, v2, v3

    const-string/jumbo v3, "HrefFragmentIdentifierIllegal"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_4 .. :try_end_4} :catch_e

    move-object/from16 v29, v30

    goto/16 :goto_4

    :catch_1
    move-exception v27

    :goto_c
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v35, v2, v3

    const-string/jumbo v3, "HrefSyntacticallyInvalid"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isValidInHTTPHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "AcceptMalformed"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isValidInHTTPHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "AcceptLanguageMalformed"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_11
    :try_start_5
    new-instance v39, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-static {v0, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-direct {v0, v4, v1, v2, v3}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-object/from16 v0, v39

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v31

    if-eqz v31, :cond_3

    move-object/from16 v0, v31

    instance-of v2, v0, Lmf/org/apache/xerces/util/HTTPInputSource;

    if-nez v2, :cond_3

    if-eqz v6, :cond_13

    :cond_12
    invoke-virtual/range {v31 .. v31}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual/range {v31 .. v31}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual/range {v31 .. v31}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v31 .. v31}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v31 .. v31}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v31

    goto/16 :goto_7

    :cond_13
    if-nez v7, :cond_12

    goto/16 :goto_7

    :catch_2
    move-exception v22

    const-string/jumbo v2, "XMLResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    return v2

    :cond_14
    if-eqz v6, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, v28

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->createInputSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v31

    goto/16 :goto_8

    :cond_16
    if-nez v7, :cond_15

    new-instance v31, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-direct {v0, v3, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_17
    if-nez v41, :cond_1a

    :cond_18
    if-eqz v41, :cond_1c

    :goto_d
    if-nez v41, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    :goto_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    if-nez v2, :cond_26

    :goto_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    const/4 v2, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->pushScope()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, v31

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_27

    :goto_10
    if-nez v41, :cond_28

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    goto/16 :goto_9

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-nez v2, :cond_18

    :cond_1b
    const-string/jumbo v37, "mf.org.apache.xerces.parsers.XIncludeParserConfiguration"

    if-nez v41, :cond_1d

    :goto_11
    invoke-static {}, Lmf/org/apache/xerces/xinclude/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v37

    invoke-static {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    if-nez v2, :cond_1e

    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-nez v2, :cond_1f

    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-nez v2, :cond_20

    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/security-manager"

    invoke-interface {v2, v4, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    new-instance v3, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string/jumbo v4, "http://apache.org/xml/properties/input-buffer-size"

    invoke-interface {v2, v4, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/namespace-context"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/xinclude/fixup-language"

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    if-nez v41, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/xinclude-handler"

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setParent(Lmf/org/apache/xerces/xinclude/XIncludeHandler;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setHref(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setXIncludeLocator(Lmf/org/apache/xerces/util/XMLLocatorWrapper;)V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    goto/16 :goto_d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v2, :cond_1b

    goto/16 :goto_d

    :cond_1d
    const-string/jumbo v37, "mf.org.apache.xerces.parsers.XPointerParserConfiguration"

    goto/16 :goto_11

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v2, v4, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v2, v4, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v2, v4, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/xpointer-handler"

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    check-cast v2, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/namespace-context"

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2, v3, v4}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    check-cast v2, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v4, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    if-nez v3, :cond_22

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_15
    invoke-virtual {v2, v4, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    check-cast v2, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    const-string/jumbo v4, "http://apache.org/xml/features/xinclude/fixup-language"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-nez v3, :cond_23

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_16
    invoke-virtual {v2, v4, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-nez v2, :cond_24

    :goto_17
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setParent(Lmf/org/apache/xerces/xinclude/XIncludeHandler;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setHref(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setXIncludeLocator(Lmf/org/apache/xerces/util/XMLLocatorWrapper;)V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    goto/16 :goto_d

    :cond_22
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_15

    :cond_23
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_16

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    check-cast v2, Lmf/org/apache/xerces/xpointer/XPointerHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v2, v4, v3}, Lmf/org/apache/xerces/xpointer/XPointerHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    move-object/from16 v0, v41

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xpointer/XPointerProcessor;->parseXPointer(Ljava/lang/String;)V
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_e

    :catch_3
    move-exception v25

    const-string/jumbo v2, "XMLResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    return v2

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    goto/16 :goto_f

    :cond_27
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_10

    :catch_4
    move-exception v23

    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-nez v2, :cond_2a

    :goto_18
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v28, v2, v3

    const-string/jumbo v3, "XMLParseError"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    goto/16 :goto_9

    :cond_28
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPtrProcessor:Lmf/org/apache/xerces/xpointer/XPointerProcessor;

    invoke-interface {v2}, Lmf/org/apache/xerces/xpointer/XPointerProcessor;->isXPointerResolved()Z

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-nez v2, :cond_29

    const/16 v32, 0x0

    :goto_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeMessageFormatter:Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;

    const-string/jumbo v3, "XPointerResolutionUnsuccessful"

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v2, v0, v3, v4}, Lmf/org/apache/xerces/xinclude/XIncludeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v28, v2, v3

    const/4 v3, 0x1

    aput-object v38, v2, v3

    const-string/jumbo v3, "XMLResourceError"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    const/4 v2, 0x0

    return v2

    :cond_29
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;
    :try_end_b
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v32

    goto :goto_19

    :cond_2a
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_18

    :catchall_0
    move-exception v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    throw v20

    :catch_5
    move-exception v22

    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    if-nez v2, :cond_2b

    :goto_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    if-nez v2, :cond_2c

    const-string/jumbo v2, "XMLResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->popScope()V

    const/4 v2, 0x0

    return v2

    :cond_2b
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    goto :goto_1a

    :cond_2c
    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_2d
    sget-object v2, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_ATTR_ENCODING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    const/16 v40, 0x0

    const/4 v2, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fIsXML11:Z

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v40, v0

    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    invoke-virtual/range {v40 .. v40}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->parse()V
    :try_end_f
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/io/CharConversionException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v40, :cond_4

    :try_start_10
    invoke-virtual/range {v40 .. v40}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_9

    :catch_6
    move-exception v22

    const-string/jumbo v2, "TextResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    return v2

    :cond_2e
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v40, v0

    goto :goto_1c

    :cond_2f
    new-instance v2, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;-><init>(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/xinclude/XIncludeHandler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;
    :try_end_11
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/io/CharConversionException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_1d

    :catch_7
    move-exception v13

    :try_start_12
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v40, :cond_4

    :try_start_13
    invoke-virtual/range {v40 .. v40}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    goto/16 :goto_9

    :catch_8
    move-exception v22

    const-string/jumbo v2, "TextResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    return v2

    :cond_30
    :try_start_14
    new-instance v2, Lmf/org/apache/xerces/xinclude/XInclude11TextReader;

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Lmf/org/apache/xerces/xinclude/XInclude11TextReader;-><init>(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/xinclude/XIncludeHandler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;
    :try_end_14
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/io/CharConversionException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_1b

    :catch_9
    move-exception v19

    :try_start_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v15, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v16, "CharConversionFailure"

    const/16 v17, 0x0

    const/16 v18, 0x2

    invoke-virtual/range {v14 .. v19}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-eqz v40, :cond_4

    :try_start_16
    invoke-virtual/range {v40 .. v40}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    goto/16 :goto_9

    :catch_a
    move-exception v22

    const-string/jumbo v2, "TextResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    return v2

    :catch_b
    move-exception v22

    :try_start_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    if-nez v2, :cond_31

    const-string/jumbo v2, "TextResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    if-nez v40, :cond_32

    :goto_1e
    const/4 v2, 0x0

    return v2

    :cond_31
    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :catchall_1
    move-exception v21

    if-nez v40, :cond_33

    :goto_1f
    throw v21

    :cond_32
    :try_start_18
    invoke-virtual/range {v40 .. v40}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c

    goto :goto_1e

    :catch_c
    move-exception v22

    const-string/jumbo v2, "TextResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    return v2

    :cond_33
    :try_start_19
    invoke-virtual/range {v40 .. v40}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d

    goto :goto_1f

    :catch_d
    move-exception v22

    const-string/jumbo v2, "TextResourceError"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v28, v3, v4

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    return v2

    :catch_e
    move-exception v27

    move-object/from16 v29, v30

    goto/16 :goto_c

    :catch_f
    move-exception v26

    move-object/from16 v29, v30

    goto/16 :goto_b
.end method

.method protected hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z
    .locals 2

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_NS_URI:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_NS_URI:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected isFallbackElement(Lmf/org/apache/xerces/xni/QName;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_FALLBACK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method protected isIncludeElement(Lmf/org/apache/xerces/xni/QName;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method protected isRootDocument()Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isTopLevelIncludedItem()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItemViaInclude()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItemViaFallback()Z

    move-result v0

    if-nez v0, :cond_0

    return v1
.end method

.method protected isTopLevelIncludedItemViaFallback()Z
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v0

    return v0
.end method

.method protected isTopLevelIncludedItemViaInclude()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    if-eq v0, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-nez v0, :cond_0

    return v2
.end method

.method protected modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;Z)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    return-object v0
.end method

.method protected modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;Z)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 2

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    :goto_0
    sget-object v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XINCLUDE_INCLUDED:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object p1

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItem()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_2
    new-instance p1, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {p1}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    goto :goto_0
.end method

.method public notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->addNotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isTopLevelIncludedItem()Z

    move-result v17

    if-nez v17, :cond_2

    :cond_0
    if-nez p1, :cond_10

    :cond_1
    return-object p1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURIFromIncludeParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eq v11, v15, :cond_5

    if-eqz p1, :cond_5

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v12, v0, :cond_a

    sget-object v17, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_5

    if-eqz p1, :cond_d

    :goto_3
    sget-object v17, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/xni/QName;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/xni/QName;

    iput-object v12, v10, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    if-nez v17, :cond_e

    iget-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v17

    :goto_4
    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-nez v15, :cond_f

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v10, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v7, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v15}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->sameBaseURIAsIncludeParent()Z

    move-result v17

    if-nez v17, :cond_3

    if-eqz p1, :cond_7

    :goto_6
    const/4 v15, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getRelativeBaseURI()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    :goto_7
    sget-object v17, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XML_BASE_QNAME:Lmf/org/apache/xerces/xni/QName;

    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v15}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v7, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    goto/16 :goto_0

    :cond_7
    new-instance p1, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct/range {p1 .. p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    goto :goto_6

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v15

    goto :goto_7

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->sameLanguageAsIncludeParent()Z

    move-result v17

    if-nez v17, :cond_4

    if-eqz p1, :cond_9

    :goto_8
    sget-object v17, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->XML_LANG_QNAME:Lmf/org/apache/xerces/xni/QName;

    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v7, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    goto/16 :goto_1

    :cond_9
    new-instance p1, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct/range {p1 .. p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    goto :goto_8

    :cond_a
    sget-object v17, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_5

    if-eqz p1, :cond_b

    :goto_9
    sget-object v17, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->NEW_NS_ATTR_QNAME:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/xni/QName;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/xni/QName;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-nez v15, :cond_c

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_a
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v10, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v7, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setSpecified(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v15}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_b
    new-instance p1, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct/range {p1 .. p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    goto :goto_9

    :cond_c
    move-object/from16 v17, v15

    goto :goto_a

    :cond_d
    new-instance p1, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct/range {p1 .. p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    iget-object v0, v10, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    :cond_f
    move-object/from16 v17, v15

    goto/16 :goto_5

    :cond_10
    invoke-interface/range {p1 .. p1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v9

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v9, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_12

    :goto_c
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_13

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_14

    :cond_11
    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkUnparsedEntity(Ljava/lang/String;)V

    goto :goto_c

    :cond_13
    new-instance v13, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_e
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkUnparsedEntity(Ljava/lang/String;)V

    goto :goto_e

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkNotation(Ljava/lang/String;)V

    goto :goto_d
.end method

.method protected processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 4

    sget-object v2, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    const-string/jumbo v3, "base"

    invoke-interface {p1, v2, v3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->saveBaseURI()V
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 3

    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    const-string/jumbo v2, "lang"

    invoke-interface {p1, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->saveLanguage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected reportFatalError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method protected reportFatalError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)V

    return-void
.end method

.method protected reportResourceError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected reportResourceError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method protected reportResourceError(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportError(Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)V

    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    iput-object v11, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput v9, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-direct {v8}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getResultDepth()I

    move-result v8

    :goto_0
    iput v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNotations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fUnparsedEntities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iput-object v11, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentRelativeURI:Ljava/lang/String;

    iput-boolean v9, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fIsXML11:Z

    iput-boolean v9, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    iput-boolean v9, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSeenRootElement:Z

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v8}, Lmf/org/apache/xerces/util/IntStack;->clear()V

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->clear()V

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->clear()V

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->clear()V

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v8}, Lmf/org/apache/xerces/util/IntStack;->clear()V

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->clear()V

    const/4 v2, 0x0

    :goto_1
    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    array-length v8, v8

    if-ge v2, v8, :cond_1

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    aput v12, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v8, v9

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_2
    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v8, v8

    if-ge v2, v8, :cond_2

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    aput-boolean v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_3
    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v8, v8

    if-ge v2, v8, :cond_3

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    aput-boolean v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    :try_start_0
    const-string/jumbo v8, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v8}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_9

    move-result v8

    if-eqz v8, :cond_b

    :goto_4
    iput-boolean v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    :try_start_1
    const-string/jumbo v8, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-interface {p1, v8}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v8, :cond_c

    :goto_5
    :try_start_2
    const-string/jumbo v8, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    invoke-interface {p1, v8}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v8, :cond_d

    :goto_6
    :try_start_3
    const-string/jumbo v8, "http://apache.org/xml/features/xinclude/fixup-language"

    invoke-interface {p1, v8}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v8, :cond_e

    :goto_7
    :try_start_4
    const-string/jumbo v8, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v8}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/util/SymbolTable;
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v6, :cond_f

    :cond_4
    :goto_8
    :try_start_5
    const-string/jumbo v8, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v8}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/XMLErrorReporter;
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_4

    if-nez v4, :cond_10

    :cond_5
    :goto_9
    :try_start_6
    const-string/jumbo v8, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v8}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_5

    if-nez v7, :cond_11

    :cond_6
    :goto_a
    :try_start_7
    const-string/jumbo v8, "http://apache.org/xml/properties/security-manager"

    invoke-interface {p1, v8}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/util/SecurityManager;
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_6

    if-nez v5, :cond_12

    :cond_7
    :goto_b
    :try_start_8
    const-string/jumbo v8, "http://apache.org/xml/properties/input-buffer-size"

    invoke-interface {p1, v8}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_13

    :cond_8
    const-string/jumbo v8, "http://apache.org/xml/properties/input-buffer-size"

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_9
    :goto_c
    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-nez v8, :cond_14

    :goto_d
    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-nez v8, :cond_15

    :goto_e
    new-instance v8, Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-direct {v8}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>()V

    iput-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {p0, p1, v8}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->copyFeatures(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;Lmf/org/apache/xerces/util/ParserConfigurationSettings;)V

    :try_start_9
    const-string/jumbo v8, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v8}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v8

    if-nez v8, :cond_16

    :cond_a
    :goto_f
    return-void

    :cond_b
    return-void

    :cond_c
    :try_start_a
    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v9, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    iget-boolean v10, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    invoke-interface {v8, v9, v10}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_a
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v8

    goto/16 :goto_5

    :cond_d
    :try_start_b
    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v9, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    iget-boolean v10, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    invoke-interface {v8, v9, v10}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_b
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v1

    iput-boolean v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupBaseURIs:Z

    goto/16 :goto_6

    :cond_e
    :try_start_c
    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v9, "http://apache.org/xml/features/xinclude/fixup-language"

    iget-boolean v10, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    invoke-interface {v8, v9, v10}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_c
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception v1

    iput-boolean v12, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    goto/16 :goto_7

    :cond_f
    :try_start_d
    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v9, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v8, v9, v6}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_8

    :catch_3
    move-exception v1

    iput-object v11, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    goto/16 :goto_8

    :cond_10
    :try_start_e
    invoke-direct {p0, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v9, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v8, v9, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_9

    :catch_4
    move-exception v1

    iput-object v11, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    goto/16 :goto_9

    :cond_11
    :try_start_f
    iput-object v7, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v9, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v8, v9, v7}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_a

    :catch_5
    move-exception v1

    iput-object v11, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    goto/16 :goto_a

    :cond_12
    :try_start_10
    iput-object v5, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v9, "http://apache.org/xml/properties/security-manager"

    invoke-interface {v8, v9, v5}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_b

    :catch_6
    move-exception v1

    iput-object v11, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    goto/16 :goto_b

    :cond_13
    :try_start_11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v9, "http://apache.org/xml/properties/input-buffer-size"

    invoke-interface {v8, v9, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_c

    :catch_7
    move-exception v1

    const-string/jumbo v8, "http://apache.org/xml/properties/input-buffer-size"

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    goto/16 :goto_c

    :cond_14
    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    iget v9, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v8, v9}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    goto/16 :goto_d

    :cond_15
    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    iget v9, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v8, v9}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    goto/16 :goto_e

    :cond_16
    :try_start_12
    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    sget-object v8, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    const-string/jumbo v9, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, v9}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string/jumbo v8, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v8}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string/jumbo v9, "http://apache.org/xml/features/validation/dynamic"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_f

    :catch_8
    move-exception v0

    goto/16 :goto_f

    :cond_17
    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    const-string/jumbo v9, "http://xml.org/sax/features/validation"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V
    :try_end_12
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_f

    :catch_9
    move-exception v8

    goto/16 :goto_4
.end method

.method protected restoreBaseURI()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public restoreLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected sameBaseURIAsIncludeParent()Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentBaseURI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2
.end method

.method protected sameLanguageAsIncludeParent()Z
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getIncludeParentLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1
.end method

.method protected saveBaseURI()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURIScope:Lmf/org/apache/xerces/util/IntStack;

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBaseURI:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLiteralSystemID:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fExpandedSystemID:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected saveLanguage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageScope:Lmf/org/apache/xerces/util/IntStack;

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fLanguageStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected searchForRecursiveIncludes(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->searchForRecursiveIncludes(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDSource:Lmf/org/apache/xerces/xni/parser/XMLDTDSource;

    return-void
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXPointerChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    goto :goto_1
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iput-boolean p2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSendUEAndNotationEvents:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNeedCopyFeatures:Z

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSettings:Lmf/org/apache/xerces/util/ParserConfigurationSettings;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected setHref(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHrefFromParent:Ljava/lang/String;

    return-void
.end method

.method protected setParent(Lmf/org/apache/xerces/xinclude/XIncludeHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "http://apache.org/xml/properties/input-buffer-size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_0
    move-object v1, p2

    check-cast v1, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v1, p2

    check-cast v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-nez v1, :cond_3

    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move-object v1, p2

    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-nez v1, :cond_5

    :goto_2
    return-void

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    move-object v1, p2

    check-cast v1, Lmf/org/apache/xerces/util/SecurityManager;

    iput-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-nez v1, :cond_7

    :goto_3
    return-void

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-nez v1, :cond_a

    :goto_4
    if-nez v0, :cond_b

    :cond_9
    :goto_5
    return-void

    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fChildConfig:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-nez v1, :cond_c

    :goto_6
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude11TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXInclude10TextReader:Lmf/org/apache/xerces/xinclude/XIncludeTextReader;

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fBufferSize:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->setBufferSize(I)V

    goto :goto_6
.end method

.method protected setSawFallback(IZ)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v1, v1

    if-ge p1, v1, :cond_0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    aput-boolean p2, v1, p1

    return-void

    :cond_0
    mul-int/lit8 v1, p1, 0x2

    new-array v0, v1, [Z

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawFallback:[Z

    goto :goto_0
.end method

.method protected setSawInclude(IZ)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v1, v1

    if-ge p1, v1, :cond_0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    aput-boolean p2, v1, p1

    return-void

    :cond_0
    mul-int/lit8 v1, p1, 0x2

    new-array v0, v1, [Z

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fSawInclude:[Z

    goto :goto_0
.end method

.method protected setState(I)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    aput p1, v1, v2

    return-void

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fState:[I

    goto :goto_0
.end method

.method protected setXIncludeLocator(Lmf/org/apache/xerces/util/XMLLocatorWrapper;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    return-void
.end method

.method protected setupCurrentBaseURI(Lmf/org/apache/xerces/xni/XMLLocator;)V
    .locals 5

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHrefFromParent:Ljava/lang/String;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setLiteralSystemId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ExpandedSystemId"

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fInDTD:Z

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    instance-of v0, p3, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    if-eqz v0, :cond_2

    :goto_0
    move-object v0, p3

    check-cast v0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fNamespaceContext:Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setupCurrentBaseURI(Lmf/org/apache/xerces/xni/XMLLocator;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->saveBaseURI()V

    if-eqz p4, :cond_3

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    const-string/jumbo v1, "currentBaseURI"

    invoke-interface {p4, v1, v0}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    :goto_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentLanguage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->saveLanguage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    :goto_3
    return-void

    :cond_2
    const-string/jumbo v0, "IncompatibleNamespaceContext"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p4, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {p4}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-boolean v2, v0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fParentXIncludeHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->searchForRecursiveIncludes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RecursiveInclude"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fCurrentBaseURI:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fXIncludeLocator:Lmf/org/apache/xerces/util/XMLLocatorWrapper;

    invoke-interface {v0, v1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_3
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v0

    if-eq v0, v3, :cond_2

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    :goto_0
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processXMLBaseAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-boolean v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fFixupLanguage:Z

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isIncludeElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isFallbackElement(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->hasXIncludeNamespace(Lmf/org/apache/xerces/xni/QName;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    if-eq v2, v6, :cond_b

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processXMLLangAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->handleIncludeElement(Lmf/org/apache/xerces/xni/XMLAttributes;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->setState(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->handleFallbackElement()V

    goto :goto_2

    :cond_7
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawInclude(I)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_3
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getSawFallback(I)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v2

    if-ne v2, v6, :cond_1

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v2, :cond_a

    :goto_5
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;

    move-result-object p2

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2

    :cond_8
    const-string/jumbo v2, "IncludeChild"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    const-string/jumbo v2, "FallbackChild"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    goto :goto_5

    :cond_b
    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v2, :cond_c

    :goto_6
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->processAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xni/XMLAttributes;

    move-result-object p2

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_2

    :cond_c
    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->checkMultipleRootElements()V

    goto :goto_6
.end method

.method public startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fResultDepth:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v1, "ENTITY_SKIPPED"

    invoke-interface {p4, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "UnexpandedEntityReferenceIllegal"

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->reportFatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->addUnparsedEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const-string/jumbo v0, "1.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fIsXML11:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->isRootDocument()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method
