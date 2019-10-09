.class Lcom/android/server/backup/restore/FullRestoreEngine$1;
.super Ljava/lang/Object;
.source "FullRestoreEngine.java"

# interfaces
.implements Lcom/android/server/backup/utils/BytesReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/restore/FullRestoreEngine;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/restore/FullRestoreEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/restore/FullRestoreEngine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 165
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine$1;->this$0:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBytesRead(J)V
    .registers 4
    .param p1, "bytesRead"    # J

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine$1;->this$0:Lcom/android/server/backup/restore/FullRestoreEngine;

    # += operator for: Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J
    invoke-static {v0, p1, p2}, Lcom/android/server/backup/restore/FullRestoreEngine;->access$014(Lcom/android/server/backup/restore/FullRestoreEngine;J)J

    .line 169
    return-void
.end method
