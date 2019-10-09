.class public Lcom/android/server/content/MiSyncResultStatusAdapter;
.super Ljava/lang/Object;
.source "MiSyncResultStatusAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateResultStatus(Landroid/content/SyncStatusInfo;Ljava/lang/String;Landroid/content/SyncResult;)V
    .registers 5
    .param p0, "syncStatusInfo"    # Landroid/content/SyncStatusInfo;
    .param p1, "lastSyncMessage"    # Ljava/lang/String;
    .param p2, "syncResult"    # Landroid/content/SyncResult;

    .line 19
    const-string v0, "canceled"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1a

    .line 20
    const-string v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 21
    const-string v0, "SyncManager"

    const-string/jumbo v1, "updateResultStatus: lastSyncMessage is canceled, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_19
    return-void

    .line 26
    :cond_1a
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->miSyncStatusInfo:Lcom/miui/internal/content/MiSyncStatusInfo;

    iput-object p1, v0, Lcom/miui/internal/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    .line 27
    if-eqz p2, :cond_38

    iget-object v0, p2, Landroid/content/SyncResult;->miSyncResult:Landroid/content/MiSyncResult;

    if-eqz v0, :cond_38

    iget-object v0, p2, Landroid/content/SyncResult;->miSyncResult:Landroid/content/MiSyncResult;

    iget-object v0, v0, Landroid/content/MiSyncResult;->resultMessage:Ljava/lang/String;

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_38

    .line 35
    :cond_2f
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->miSyncStatusInfo:Lcom/miui/internal/content/MiSyncStatusInfo;

    iget-object v1, p2, Landroid/content/SyncResult;->miSyncResult:Landroid/content/MiSyncResult;

    iget-object v1, v1, Landroid/content/MiSyncResult;->resultMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/internal/content/MiSyncStatusInfo;->lastResultMessage:Ljava/lang/String;

    .line 36
    return-void

    .line 29
    :cond_38
    :goto_38
    const-string v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 30
    const-string v0, "SyncManager"

    const-string/jumbo v1, "updateResultStatus: sync result message is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_48
    return-void
.end method
