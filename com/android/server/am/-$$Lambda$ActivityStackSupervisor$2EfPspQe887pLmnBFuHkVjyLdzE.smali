.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ActivityStackSupervisor;

.field private final synthetic f$1:Lcom/android/server/am/ActivityStack;

.field private final synthetic f$2:I

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;->f$0:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;->f$1:Lcom/android/server/am/ActivityStack;

    iput p3, p0, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;->f$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;->f$1:Lcom/android/server/am/ActivityStack;

    iget v2, p0, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$2EfPspQe887pLmnBFuHkVjyLdzE;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->lambda$moveTasksToFullscreenStackLocked$0(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;IZ)V

    return-void
.end method
