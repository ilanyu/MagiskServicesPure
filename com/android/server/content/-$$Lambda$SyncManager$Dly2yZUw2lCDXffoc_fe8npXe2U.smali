.class public final synthetic Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/content/SyncManager$OnReadyCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/content/SyncManager;

.field private final synthetic f$1:Landroid/accounts/AccountAndUser;

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Landroid/os/Bundle;

.field private final synthetic f$5:I

.field private final synthetic f$6:J

.field private final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJI)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$0:Lcom/android/server/content/SyncManager;

    iput-object p2, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$1:Landroid/accounts/AccountAndUser;

    iput p3, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$2:I

    iput-object p4, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$4:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$5:I

    iput-wide p7, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$6:J

    iput p9, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$7:I

    return-void
.end method


# virtual methods
.method public final onReady()V
    .registers 10

    iget-object v0, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$0:Lcom/android/server/content/SyncManager;

    iget-object v1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$1:Landroid/accounts/AccountAndUser;

    iget v2, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$2:I

    iget-object v3, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$4:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$5:I

    iget-wide v6, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$6:J

    iget v8, p0, Lcom/android/server/content/-$$Lambda$SyncManager$Dly2yZUw2lCDXffoc_fe8npXe2U;->f$7:I

    invoke-static/range {v0 .. v8}, Lcom/android/server/content/SyncManager;->lambda$scheduleSync$5(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJI)V

    return-void
.end method
