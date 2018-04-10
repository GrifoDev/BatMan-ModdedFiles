.class public Lcom/sun/org/apache/xml/internal/security/Init;
.super Ljava/lang/Object;


# static fields
.field public static final CONF_NS:Ljava/lang/String; = "http://www.xmlsecurity.org/NS/#configuration"

.field private static _alreadyInitialized:Z

.field static synthetic class$com$sun$org$apache$xml$internal$security$Init:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/Init;->class$com$sun$org$apache$xml$internal$security$Init:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/Init;->class$com$sun$org$apache$xml$internal$security$Init:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/Init;->_alreadyInitialized:Z

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.Init"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/Init;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/Init;->class$com$sun$org$apache$xml$internal$security$Init:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static declared-synchronized init()V
    .locals 76

    const-class v70, Lcom/sun/org/apache/xml/internal/security/Init;

    monitor-enter v70

    :try_start_0
    sget-boolean v65, Lcom/sun/org/apache/xml/internal/security/Init;->_alreadyInitialized:Z

    if-nez v65, :cond_2

    const-wide/16 v4, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v52, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v65, 0x1

    sput-boolean v65, Lcom/sun/org/apache/xml/internal/security/Init;->_alreadyInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v23

    const/16 v65, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const/16 v65, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    invoke-virtual/range {v23 .. v23}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v32

    const-string/jumbo v65, "com.sun.org.apache.xml.internal.security.resource.config"

    invoke-static/range {v65 .. v65}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v65, "com.sun.org.apache.xml.internal.security.Init"

    invoke-static/range {v65 .. v65}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v65

    if-nez v33, :cond_0

    const-string/jumbo v33, "resource/config.xml"

    :cond_0
    move-object/from16 v0, v65

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    const-wide/16 v38, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v68

    :try_start_2
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->init()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v40, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v43

    :goto_0
    if-nez v43, :cond_3

    :cond_1
    invoke-interface/range {v43 .. v43}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v56

    :goto_1
    if-nez v56, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v54

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_23

    :goto_2
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_24

    :goto_3
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_25

    :goto_4
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_26

    :goto_5
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_27

    :goto_6
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_28

    :goto_7
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_29

    :goto_8
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_2a

    :goto_9
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_2b

    :goto_a
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_2c

    :goto_b
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_2d

    :goto_c
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v65

    if-nez v65, :cond_2e

    :goto_d
    monitor-exit v70

    return-void

    :cond_2
    monitor-exit v70

    return-void

    :catch_0
    move-exception v42

    :try_start_4
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Throwable;->printStackTrace()V

    throw v42
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v22

    :try_start_5
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v72, "Bad: "

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v65

    monitor-exit v70

    throw v65

    :cond_3
    :try_start_6
    invoke-interface/range {v43 .. v43}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v65

    const-string/jumbo v71, "Configuration"

    move-object/from16 v0, v71

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_1

    invoke-interface/range {v43 .. v43}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v43

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, v56

    instance-of v0, v0, Lorg/w3c/dom/Element;

    move/from16 v65, v0

    if-eqz v65, :cond_6

    invoke-interface/range {v56 .. v56}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v57

    const-string/jumbo v65, "ResourceBundles"

    move-object/from16 v0, v57

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_7

    :goto_e
    const-string/jumbo v65, "CanonicalizationMethods"

    move-object/from16 v0, v57

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_a

    :goto_f
    const-string/jumbo v65, "TransformAlgorithms"

    move-object/from16 v0, v57

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_d

    :goto_10
    const-string/jumbo v65, "JCEAlgorithmMappings"

    move-object/from16 v0, v65

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_10

    :goto_11
    const-string/jumbo v65, "SignatureAlgorithms"

    move-object/from16 v0, v57

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_11

    :goto_12
    const-string/jumbo v65, "ResourceResolvers"

    move-object/from16 v0, v57

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_14

    :cond_5
    const-string/jumbo v65, "KeyResolver"

    move-object/from16 v0, v57

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_19

    :goto_13
    const-string/jumbo v65, "PrefixMappings"

    move-object/from16 v0, v57

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_1f

    :cond_6
    :goto_14
    invoke-interface/range {v56 .. v56}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v56

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object/from16 v0, v56

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v58, v0

    const-string/jumbo v65, "defaultLanguageCode"

    move-object/from16 v0, v58

    move-object/from16 v1, v65

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v60

    const-string/jumbo v65, "defaultCountryCode"

    move-object/from16 v0, v58

    move-object/from16 v1, v65

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v61

    if-eqz v60, :cond_8

    invoke-interface/range {v60 .. v60}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v62

    :goto_15
    if-eqz v61, :cond_9

    invoke-interface/range {v61 .. v61}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v63

    :goto_16
    invoke-static/range {v62 .. v63}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->init(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto/16 :goto_e

    :cond_8
    const/16 v62, 0x0

    goto :goto_15

    :cond_9
    const/16 v63, 0x0

    goto :goto_16

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->init()V

    invoke-interface/range {v56 .. v56}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v65

    const-string/jumbo v71, "http://www.xmlsecurity.org/NS/#configuration"

    const-string/jumbo v72, "CanonicalizationMethod"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v58

    const/16 v59, 0x0

    :goto_17
    move-object/from16 v0, v58

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v59

    move/from16 v1, v65

    if-lt v0, v1, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    goto/16 :goto_f

    :cond_b
    aget-object v65, v58, v59

    const/16 v71, 0x0

    const-string/jumbo v72, "URI"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    aget-object v65, v58, v59

    const/16 v71, 0x0

    const-string/jumbo v72, "JAVACLASS"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v62

    :try_start_7
    invoke-static/range {v62 .. v62}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_c

    :goto_18
    invoke-static/range {v61 .. v62}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->register(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    add-int/lit8 v59, v59, 0x1

    goto :goto_17

    :cond_c
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "Canonicalizer.register("

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, ", "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, ")"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_18

    :catch_2
    move-exception v63

    const/16 v65, 0x2

    :try_start_8
    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput-object v61, v64, v65

    const/16 v65, 0x1

    aput-object v62, v64, v65

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v72, "algorithm.classDoesNotExist"

    move-object/from16 v0, v72

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_19

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->init()V

    invoke-interface/range {v56 .. v56}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v65

    const-string/jumbo v71, "http://www.xmlsecurity.org/NS/#configuration"

    const-string/jumbo v72, "TransformAlgorithm"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v58

    const/16 v59, 0x0

    :goto_1a
    move-object/from16 v0, v58

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v59

    move/from16 v1, v65

    if-lt v0, v1, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    goto/16 :goto_10

    :cond_e
    aget-object v65, v58, v59

    const/16 v71, 0x0

    const-string/jumbo v72, "URI"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    aget-object v65, v58, v59

    const/16 v71, 0x0

    const-string/jumbo v72, "JAVACLASS"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v62

    :try_start_9
    invoke-static/range {v62 .. v62}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_f

    :goto_1b
    invoke-static/range {v61 .. v62}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->register(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    add-int/lit8 v59, v59, 0x1

    goto :goto_1a

    :cond_f
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "Transform.register("

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, ", "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, ")"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1b

    :catch_3
    move-exception v63

    const/16 v65, 0x2

    :try_start_a
    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput-object v61, v64, v65

    const/16 v65, 0x1

    aput-object v62, v64, v65

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v72, "algorithm.classDoesNotExist"

    move-object/from16 v0, v72

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1c

    :catch_4
    move-exception v63

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v72, "Not able to found dependecies for algorithm, I\'m keep working."

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1c

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    move-object/from16 v0, v56

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->init(Lorg/w3c/dom/Element;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v66

    goto/16 :goto_11

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->providerInit()V

    invoke-interface/range {v56 .. v56}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v65

    const-string/jumbo v71, "http://www.xmlsecurity.org/NS/#configuration"

    const-string/jumbo v72, "SignatureAlgorithm"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v58

    const/16 v59, 0x0

    :goto_1d
    move-object/from16 v0, v58

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v59

    move/from16 v1, v65

    if-lt v0, v1, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    goto/16 :goto_12

    :cond_12
    aget-object v65, v58, v59

    const/16 v71, 0x0

    const-string/jumbo v72, "URI"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    aget-object v65, v58, v59

    const/16 v71, 0x0

    const-string/jumbo v72, "JAVACLASS"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v62

    :try_start_b
    invoke-static/range {v62 .. v62}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_13

    :goto_1e
    invoke-static/range {v61 .. v62}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->register(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    add-int/lit8 v59, v59, 0x1

    goto :goto_1d

    :cond_13
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "SignatureAlgorithm.register("

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, ", "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, ")"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1e

    :catch_5
    move-exception v63

    const/16 v65, 0x2

    :try_start_c
    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput-object v61, v64, v65

    const/16 v65, 0x1

    aput-object v62, v64, v65

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v72, "algorithm.classDoesNotExist"

    move-object/from16 v0, v72

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1f

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->init()V

    invoke-interface/range {v56 .. v56}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v65

    const-string/jumbo v71, "http://www.xmlsecurity.org/NS/#configuration"

    const-string/jumbo v72, "Resolver"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v58

    const/16 v59, 0x0

    :goto_20
    move-object/from16 v0, v58

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v59

    move/from16 v1, v65

    if-ge v0, v1, :cond_5

    aget-object v65, v58, v59

    const/16 v71, 0x0

    const-string/jumbo v72, "JAVACLASS"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    aget-object v65, v58, v59

    const/16 v71, 0x0

    const-string/jumbo v72, "DESCRIPTION"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    if-nez v62, :cond_17

    :cond_15
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v65

    if-nez v65, :cond_18

    :cond_16
    :goto_21
    :try_start_d
    invoke-static/range {v61 .. v61}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->register(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_22
    :try_start_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    add-int/lit8 v59, v59, 0x1

    goto :goto_20

    :cond_17
    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v65

    if-lez v65, :cond_15

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-eqz v65, :cond_16

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "Register Resolver: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, ": "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_21

    :cond_18
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "Register Resolver: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, ": For unknown purposes"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_21

    :catch_6
    move-exception v63

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "Cannot register:"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, " perhaps some needed jars are not installed"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    move-object/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->init()V

    invoke-interface/range {v56 .. v56}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v65

    const-string/jumbo v71, "http://www.xmlsecurity.org/NS/#configuration"

    const-string/jumbo v72, "Resolver"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v58

    const/16 v59, 0x0

    :goto_23
    move-object/from16 v0, v58

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v59

    move/from16 v1, v65

    if-lt v0, v1, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto/16 :goto_13

    :cond_1a
    aget-object v65, v58, v59

    const/16 v71, 0x0

    const-string/jumbo v72, "JAVACLASS"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    aget-object v65, v58, v59

    const/16 v71, 0x0

    const-string/jumbo v72, "DESCRIPTION"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    if-nez v62, :cond_1d

    :cond_1b
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_1e

    :cond_1c
    :goto_24
    invoke-static/range {v61 .. v61}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->register(Ljava/lang/String;)V

    add-int/lit8 v59, v59, 0x1

    goto :goto_23

    :cond_1d
    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v65

    if-lez v65, :cond_1b

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-eqz v65, :cond_1c

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "Register Resolver: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, ": "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_24

    :cond_1e
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "Register Resolver: "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, ": For unknown purposes"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_24

    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_20

    :goto_25
    invoke-interface/range {v56 .. v56}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v65

    const-string/jumbo v71, "http://www.xmlsecurity.org/NS/#configuration"

    const-string/jumbo v72, "PrefixMapping"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v58

    const/16 v59, 0x0

    :goto_26
    move-object/from16 v0, v58

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v59

    move/from16 v1, v65

    if-lt v0, v1, :cond_21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    goto/16 :goto_14

    :cond_20
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v72, "Now I try to bind prefixes:"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_25

    :cond_21
    aget-object v65, v58, v59

    const/16 v71, 0x0

    const-string/jumbo v72, "namespace"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    aget-object v65, v58, v59

    const/16 v71, 0x0

    const-string/jumbo v72, "prefix"

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v65

    if-nez v65, :cond_22

    :goto_27
    invoke-static/range {v61 .. v62}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->setDefaultPrefix(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v59, v59, 0x1

    goto :goto_26

    :cond_22
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "Now I try to bind "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, " to "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    move-object/from16 v0, v72

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_27

    :cond_23
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "XX_init                             "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    sub-long v74, v54, v20

    move-wide/from16 v0, v74

    long-to-int v0, v0

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, " ms"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_24
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "  XX_prng                           "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    sub-long v74, v26, v24

    move-wide/from16 v0, v74

    long-to-int v0, v0

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, " ms"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_25
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "  XX_parsing                        "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    sub-long v74, v36, v30

    move-wide/from16 v0, v74

    long-to-int v0, v0

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, " ms"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_26
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "  XX_configure_i18n                 "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    sub-long v74, v4, v38

    move-wide/from16 v0, v74

    long-to-int v0, v0

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, " ms"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_27
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "  XX_configure_reg_c14n             "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    sub-long v74, v52, v28

    move-wide/from16 v0, v74

    long-to-int v0, v0

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, " ms"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_28
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "  XX_configure_reg_jcemapper        "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    sub-long v74, v66, v44

    move-wide/from16 v0, v74

    long-to-int v0, v0

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, " ms"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_29
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "  XX_configure_reg_keyInfo          "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    sub-long v74, v16, v68

    move-wide/from16 v0, v74

    long-to-int v0, v0

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, " ms"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_2a
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "  XX_configure_reg_keyResolver      "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    sub-long v74, v6, v18

    move-wide/from16 v0, v74

    long-to-int v0, v0

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, " ms"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2b
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "  XX_configure_reg_prefixes         "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    sub-long v74, v50, v8

    move-wide/from16 v0, v74

    long-to-int v0, v0

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, " ms"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_2c
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "  XX_configure_reg_resourceresolver "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    sub-long v74, v48, v10

    move-wide/from16 v0, v74

    long-to-int v0, v0

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, " ms"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_2d
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "  XX_configure_reg_sigalgos         "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    sub-long v74, v12, v46

    move-wide/from16 v0, v74

    long-to-int v0, v0

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, " ms"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_2e
    sget-object v65, Lcom/sun/org/apache/xml/internal/security/Init;->log:Ljava/util/logging/Logger;

    sget-object v71, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v72, Ljava/lang/StringBuffer;

    invoke-direct/range {v72 .. v72}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v73, "  XX_configure_reg_transforms       "

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    sub-long v74, v14, v40

    move-wide/from16 v0, v74

    long-to-int v0, v0

    move/from16 v73, v0

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v72

    const-string/jumbo v73, " ms"

    invoke-virtual/range {v72 .. v73}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v72

    invoke-virtual/range {v72 .. v72}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v65

    move-object/from16 v1, v71

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_d
.end method

.method public static final isInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/sun/org/apache/xml/internal/security/Init;->_alreadyInitialized:Z

    return v0
.end method
