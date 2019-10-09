.class public final synthetic Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$iBg5-L6PAieAfuWNXxIPqvSlAAg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/utils/ManagedApplicationService$1;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/ManagedApplicationService$1;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$iBg5-L6PAieAfuWNXxIPqvSlAAg;->f$0:Lcom/android/server/utils/ManagedApplicationService$1;

    iput-wide p2, p0, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$iBg5-L6PAieAfuWNXxIPqvSlAAg;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$iBg5-L6PAieAfuWNXxIPqvSlAAg;->f$0:Lcom/android/server/utils/ManagedApplicationService$1;

    iget-wide v1, p0, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$iBg5-L6PAieAfuWNXxIPqvSlAAg;->f$1:J

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/ManagedApplicationService$1;->lambda$onServiceDisconnected$2(Lcom/android/server/utils/ManagedApplicationService$1;J)V

    return-void
.end method
