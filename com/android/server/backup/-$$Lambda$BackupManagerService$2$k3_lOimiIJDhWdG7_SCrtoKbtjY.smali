.class public final synthetic Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$k3_lOimiIJDhWdG7_SCrtoKbtjY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/BackupManagerService$2;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$k3_lOimiIJDhWdG7_SCrtoKbtjY;->f$0:Lcom/android/server/backup/BackupManagerService$2;

    iput-object p2, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$k3_lOimiIJDhWdG7_SCrtoKbtjY;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$k3_lOimiIJDhWdG7_SCrtoKbtjY;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$k3_lOimiIJDhWdG7_SCrtoKbtjY;->f$0:Lcom/android/server/backup/BackupManagerService$2;

    iget-object v1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$k3_lOimiIJDhWdG7_SCrtoKbtjY;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$k3_lOimiIJDhWdG7_SCrtoKbtjY;->f$2:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$2;->lambda$onReceive$0(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
