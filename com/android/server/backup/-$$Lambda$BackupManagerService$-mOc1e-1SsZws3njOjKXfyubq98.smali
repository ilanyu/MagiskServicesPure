.class public final synthetic Lcom/android/server/backup/-$$Lambda$BackupManagerService$-mOc1e-1SsZws3njOjKXfyubq98;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/DataChangedJournal$Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$-mOc1e-1SsZws3njOjKXfyubq98;->f$0:Lcom/android/server/backup/BackupManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$-mOc1e-1SsZws3njOjKXfyubq98;->f$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0, p1}, Lcom/android/server/backup/BackupManagerService;->lambda$parseLeftoverJournals$0(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    return-void
.end method
