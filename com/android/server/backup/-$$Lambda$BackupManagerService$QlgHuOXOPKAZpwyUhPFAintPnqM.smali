.class public final synthetic Lcom/android/server/backup/-$$Lambda$BackupManagerService$QlgHuOXOPKAZpwyUhPFAintPnqM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/transport/OnTransportRegisteredListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$QlgHuOXOPKAZpwyUhPFAintPnqM;->f$0:Lcom/android/server/backup/BackupManagerService;

    return-void
.end method


# virtual methods
.method public final onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$QlgHuOXOPKAZpwyUhPFAintPnqM;->f$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->lambda$QlgHuOXOPKAZpwyUhPFAintPnqM(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
