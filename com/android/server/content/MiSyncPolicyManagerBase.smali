.class public Lcom/android/server/content/MiSyncPolicyManagerBase;
.super Ljava/lang/Object;
.source "MiSyncPolicyManagerBase.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maybeConvertToMiCanceledMsg(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "op"    # Lcom/android/server/content/SyncOperation;
    .param p1, "before"    # Ljava/lang/String;

    .line 8
    return-object p1
.end method
