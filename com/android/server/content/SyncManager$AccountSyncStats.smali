.class Lcom/android/server/content/SyncManager$AccountSyncStats;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountSyncStats"
.end annotation


# instance fields
.field elapsedTime:J

.field name:Ljava/lang/String;

.field times:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 2772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2773
    iput-object p1, p0, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    .line 2774
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/server/content/SyncManager$1;

    .line 2767
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;)V

    return-void
.end method
