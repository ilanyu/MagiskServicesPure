.class public final synthetic Lcom/android/server/am/-$$Lambda$PendingRemoteAnimationRegistry$Entry$nMsaTjyghAPVeCjs7XjsdMM78mc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$PendingRemoteAnimationRegistry$Entry$nMsaTjyghAPVeCjs7XjsdMM78mc;->f$0:Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$PendingRemoteAnimationRegistry$Entry$nMsaTjyghAPVeCjs7XjsdMM78mc;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$PendingRemoteAnimationRegistry$Entry$nMsaTjyghAPVeCjs7XjsdMM78mc;->f$0:Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$PendingRemoteAnimationRegistry$Entry$nMsaTjyghAPVeCjs7XjsdMM78mc;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;->lambda$new$0(Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;Ljava/lang/String;)V

    return-void
.end method
