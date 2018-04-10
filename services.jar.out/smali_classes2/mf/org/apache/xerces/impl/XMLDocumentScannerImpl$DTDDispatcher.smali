.class public final Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;
.super Ljava/lang/Object;
.source "XMLDocumentScannerImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DTDDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    :cond_0
    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fScannerState:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DTDDispatcher#dispatch: scanner state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fScannerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fScannerState:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->getScannerStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    const/4 v1, 0x0

    return v1

    :pswitch_0
    const/4 v15, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidation:Z

    if-eqz v1, :cond_5

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-nez v1, :cond_6

    :cond_2
    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v3, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStandalone:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fHasExternalDTD:Z

    if-nez v1, :cond_7

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x1

    invoke-interface {v2, v4, v3, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->scanDTDInternalSubset(ZZZ)Z
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    if-eqz v17, :cond_8

    :cond_4
    :goto_2
    if-nez p1, :cond_0

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    const/4 v1, 0x1

    return v1

    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-nez v1, :cond_1

    :goto_3
    const/16 v18, 0x0

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_7
    if-eqz v18, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$2(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v1

    if-nez v1, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->hasPEReferences()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_9
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fPrologDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    const/4 v1, 0x1

    return v1

    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string/jumbo v2, "EXPECTED_SQUARE_BRACKET_TO_CLOSE_INTERNAL_SUBSET"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    :catch_1
    move-exception v12

    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v7, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v9, "CharConversionFailure"

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    const/4 v1, 0x0

    return v1

    :cond_c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "DoctypedeclUnterminated"

    invoke-virtual {v1, v3, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    :catch_2
    move-exception v16

    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string/jumbo v2, "PrematureEOF"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    const/4 v1, 0x0

    return v1

    :cond_d
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStandalone:Z

    if-nez v1, :cond_e

    const/4 v1, 0x1

    :goto_7
    iput-boolean v1, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V
    :try_end_8
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    throw v13

    :cond_e
    const/4 v1, 0x0

    goto :goto_7

    :cond_f
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStandalone:Z

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_8
    iput-boolean v1, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$2(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$3(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_2

    :cond_10
    const/4 v1, 0x0

    goto :goto_8

    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStandalone:Z

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto/16 :goto_6

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$4(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$4(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setRootName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$4(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    move-object/from16 v0, v19

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    const/4 v14, 0x1

    goto/16 :goto_2

    :pswitch_2
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->scanDTDExternalSubset(Z)Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fPrologDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V
    :try_end_9
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
