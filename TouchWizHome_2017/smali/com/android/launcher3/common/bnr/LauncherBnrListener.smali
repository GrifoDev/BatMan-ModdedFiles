.class public interface abstract Lcom/android/launcher3/common/bnr/LauncherBnrListener;
.super Ljava/lang/Object;
.source "LauncherBnrListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    }
.end annotation


# virtual methods
.method public abstract backupComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
.end method

.method public abstract getDecryptStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getEncryptStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract restoreComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
.end method
