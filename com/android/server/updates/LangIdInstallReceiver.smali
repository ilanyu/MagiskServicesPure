.class public Lcom/android/server/updates/LangIdInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "LangIdInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 22
    const-string v0, "/data/misc/textclassifier/"

    const-string/jumbo v1, "textclassifier.langid.model"

    const-string/jumbo v2, "metadata/langid"

    const-string/jumbo v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
