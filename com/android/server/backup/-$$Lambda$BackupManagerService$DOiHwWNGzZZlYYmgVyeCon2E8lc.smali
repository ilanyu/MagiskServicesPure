.class public final synthetic Lcom/android/server/backup/-$$Lambda$BackupManagerService$DOiHwWNGzZZlYYmgVyeCon2E8lc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/BackupManagerService;

.field private final synthetic f$1:Landroid/content/ComponentName;

.field private final synthetic f$2:Landroid/app/backup/ISelectBackupTransportCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$DOiHwWNGzZZlYYmgVyeCon2E8lc;->f$0:Lcom/android/server/backup/BackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$DOiHwWNGzZZlYYmgVyeCon2E8lc;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$DOiHwWNGzZZlYYmgVyeCon2E8lc;->f$2:Landroid/app/backup/ISelectBackupTransportCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$DOiHwWNGzZZlYYmgVyeCon2E8lc;->f$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$DOiHwWNGzZZlYYmgVyeCon2E8lc;->f$1:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$DOiHwWNGzZZlYYmgVyeCon2E8lc;->f$2:Landroid/app/backup/ISelectBackupTransportCallback;

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->lambda$selectBackupTransportAsync$5(Lcom/android/server/backup/BackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    return-void
.end method
