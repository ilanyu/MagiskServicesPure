.class public final synthetic Lcom/android/server/backup/-$$Lambda$Trampoline$zhmxdOntlNYAyF3FWA7uhVoZeFI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/Trampoline;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/Trampoline;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$Trampoline$zhmxdOntlNYAyF3FWA7uhVoZeFI;->f$0:Lcom/android/server/backup/Trampoline;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$Trampoline$zhmxdOntlNYAyF3FWA7uhVoZeFI;->f$0:Lcom/android/server/backup/Trampoline;

    invoke-static {v0}, Lcom/android/server/backup/Trampoline;->lambda$unlockSystemUser$0(Lcom/android/server/backup/Trampoline;)V

    return-void
.end method
