.class public final synthetic Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/content/SyncManager;

.field private final synthetic f$1:Landroid/accounts/AccountAndUser;

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:Ljava/lang/String;

.field private final synthetic f$5:Landroid/os/Bundle;

.field private final synthetic f$6:I

.field private final synthetic f$7:J

.field private final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJI)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$0:Lcom/android/server/content/SyncManager;

    iput-object p2, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$1:Landroid/accounts/AccountAndUser;

    iput p3, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$2:I

    iput p4, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$3:I

    iput-object p5, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$5:Landroid/os/Bundle;

    iput p7, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$6:I

    iput-wide p8, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$7:J

    iput p10, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$8:I

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$0:Lcom/android/server/content/SyncManager;

    iget-object v1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$1:Landroid/accounts/AccountAndUser;

    iget v2, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$2:I

    iget v3, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$3:I

    iget-object v4, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$5:Landroid/os/Bundle;

    iget v6, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$6:I

    iget-wide v7, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$7:J

    iget v9, p0, Lcom/android/server/content/-$$Lambda$SyncManager$o7UdjgcI2E4HDw_-2JMHW-T1SJs;->f$8:I

    move-object v10, p1

    invoke-static/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->lambda$scheduleSync$4(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJILandroid/os/Bundle;)V

    return-void
.end method
