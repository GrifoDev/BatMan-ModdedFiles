.class public Lcom/sun/org/apache/xml/internal/security/utils/I18n;
.super Ljava/lang/Object;


# static fields
.field public static final NOT_INITIALIZED_MSG:Ljava/lang/String; = "You must initialize the xml-security library correctly before you use it. Call the static method \"com.sun.org.apache.xml.internal.security.Init.init();\" to do that before you use any functionality from that library."

.field protected static _countryCode:Ljava/lang/String;

.field protected static _languageCode:Ljava/lang/String;

.field protected static alreadyInitialized:Z

.field public static defaultCountryCode:Ljava/lang/String;

.field public static defaultLanguageCode:Ljava/lang/String;

.field protected static resourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->alreadyInitialized:Z

    sput-object v1, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->_languageCode:Ljava/lang/String;

    sput-object v1, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->_countryCode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->resourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/Init;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "You must initialize the xml-security library correctly before you use it. Call the static method \"com.sun.org.apache.xml.internal.security.Init.init();\" to do that before you use any functionality from that library."

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "No message with ID \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\" found in resource bundle \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "com/sun/org/apache/xml/internal/security/resource/xmlsecurity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getExceptionMessage(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->resourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v2, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/Init;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "You must initialize the xml-security library correctly before you use it. Call the static method \"com.sun.org.apache.xml.internal.security.Init.init();\" to do that before you use any functionality from that library."

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "No message with ID \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "\" found in resource bundle \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "com/sun/org/apache/xml/internal/security/resource/xmlsecurity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "\". Original Exception was a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " and message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getExceptionMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->resourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/Init;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "You must initialize the xml-security library correctly before you use it. Call the static method \"com.sun.org.apache.xml.internal.security.Init.init();\" to do that before you use any functionality from that library."

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "No message with ID \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\" found in resource bundle \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "com/sun/org/apache/xml/internal/security/resource/xmlsecurity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->defaultLanguageCode:Ljava/lang/String;

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->defaultLanguageCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    sput-object p1, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->defaultCountryCode:Ljava/lang/String;

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->defaultCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    :goto_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->defaultLanguageCode:Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->defaultCountryCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->initLocale(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->defaultLanguageCode:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->defaultCountryCode:Ljava/lang/String;

    goto :goto_1
.end method

.method public static initLocale(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->alreadyInitialized:Z

    if-nez v0, :cond_2

    :cond_0
    if-nez p0, :cond_3

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->defaultCountryCode:Ljava/lang/String;

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->_countryCode:Ljava/lang/String;

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->defaultLanguageCode:Ljava/lang/String;

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->_languageCode:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/util/Locale;

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->_languageCode:Ljava/lang/String;

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->_countryCode:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "com/sun/org/apache/xml/internal/security/resource/xmlsecurity"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->resourceBundle:Ljava/util/ResourceBundle;

    return-void

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->_languageCode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->_countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sput-object p0, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->_languageCode:Ljava/lang/String;

    sput-object p1, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->_countryCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public static translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->getExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->getExceptionMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
