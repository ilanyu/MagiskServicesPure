.class Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Lcom/android/server/backup/utils/BytesReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/restore/PerformAdbRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/restore/PerformAdbRestoreTask;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    .line 469
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;->this$0:Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBytesRead(J)V
    .registers 4
    .param p1, "bytesRead"    # J

    .line 472
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;->this$0:Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    # += operator for: Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J
    invoke-static {v0, p1, p2}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->access$014(Lcom/android/server/backup/restore/PerformAdbRestoreTask;J)J

    .line 473
    return-void
.end method
