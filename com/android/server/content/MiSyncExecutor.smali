.class Lcom/android/server/content/MiSyncExecutor;
.super Ljava/lang/Object;
.source "MiSyncExecutor.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sync(Lcom/android/server/content/SyncManager;ILandroid/accounts/Account;)V
    .registers 11
    .param p0, "syncManager"    # Lcom/android/server/content/SyncManager;
    .param p1, "sendingUserId"    # I
    .param p2, "account"    # Landroid/accounts/Account;

    .line 12
    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;II)V

    .line 15
    return-void
.end method
