.class public Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;
.super Ljava/lang/Object;
.source "XMLDocumentFragmentScannerImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FragmentContentDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :cond_0
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    if-nez p1, :cond_0

    if-nez v13, :cond_0

    const/4 v1, 0x1

    return v1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanContent()I

    move-result v14

    const/16 v1, 0x3c

    if-eq v14, v1, :cond_5

    const/16 v1, 0x26

    if-eq v14, v1, :cond_6

    const/4 v1, -0x1

    if-ne v14, v1, :cond_7

    :cond_2
    :goto_2
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 v13, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 v13, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    const/4 v1, 0x0

    return v1

    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v7, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v9, "CharConversionFailure"

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    const/4 v1, 0x0

    return v1

    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v14}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isInvalidLiteral(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v14}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string/jumbo v2, "InvalidCharInContent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v14, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->endOfFileHook(Ljava/io/EOFException;)V

    const/4 v1, 0x0

    return v1

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameStartChar(I)Z

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string/jumbo v2, "MarkupNotRecognizedInContent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanEndElement()I

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->elementDepthIsZeroHook()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    return v1

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanStartElement()Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v2, "[CDATA["

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->scanForDoctypeHook()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string/jumbo v2, "MarkupNotRecognizedInContent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string/jumbo v2, "InvalidCommentStart"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanStartElement()Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanComment()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanPI()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanCDATASection(Z)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanEntityReference()V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanCharReference()V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v2, "<?xml"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameChar(I)Z

    move-result v1

    if-nez v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanXMLDeclOrTextDecl(Z)V

    goto :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    const-string/jumbo v2, "xml"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-nez v1, :cond_17

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameChar(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNCName(I)Z

    move-result v1

    if-nez v1, :cond_16

    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v2

    iget-object v2, v2, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v3

    iget v3, v3, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-static {v4}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v4

    iget v4, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->scanRootElementHook()Z

    move-result v1

    if-nez v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :cond_19
    const/4 v1, 0x1

    return v1

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string/jumbo v2, "DoctypeIllegalInContent"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method protected elementDepthIsZeroHook()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected endOfFileHook(Ljava/io/EOFException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string/jumbo v1, "PrematureEOF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected scanForDoctypeHook()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected scanRootElementHook()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
