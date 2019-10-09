.class public final synthetic Lcom/android/server/backup/-$$Lambda$BackupManagerService$uWCtISrzNRpV2diTzD5MWI0bdDM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/internal/OnTaskFinishedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$uWCtISrzNRpV2diTzD5MWI0bdDM;->f$0:Lcom/android/server/backup/BackupManagerService;

    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$uWCtISrzNRpV2diTzD5MWI0bdDM;->f$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0, p1}, Lcom/android/server/backup/BackupManagerService;->lambda$initializeTransports$2(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    return-void
.end method
