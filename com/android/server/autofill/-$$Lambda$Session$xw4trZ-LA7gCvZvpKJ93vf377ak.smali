.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Session$xw4trZ-LA7gCvZvpKJ93vf377ak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/Session;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$Session$xw4trZ-LA7gCvZvpKJ93vf377ak;->f$0:Lcom/android/server/autofill/Session;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$Session$xw4trZ-LA7gCvZvpKJ93vf377ak;->f$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->lambda$setClientLocked$0(Lcom/android/server/autofill/Session;)V

    return-void
.end method
