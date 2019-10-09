.class public final synthetic Lcom/android/server/backup/-$$Lambda$BackupManagerService$Yom7ZUYhsBBc6e92Mh_gepfydaQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/BackupManagerService;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$Yom7ZUYhsBBc6e92Mh_gepfydaQ;->f$0:Lcom/android/server/backup/BackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$Yom7ZUYhsBBc6e92Mh_gepfydaQ;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$Yom7ZUYhsBBc6e92Mh_gepfydaQ;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$Yom7ZUYhsBBc6e92Mh_gepfydaQ;->f$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$Yom7ZUYhsBBc6e92Mh_gepfydaQ;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$Yom7ZUYhsBBc6e92Mh_gepfydaQ;->f$2:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/backup/BackupManagerService;->lambda$setBackupEnabled$4(Lcom/android/server/backup/BackupManagerService;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
