.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$x0Vocp-itdO3YPTBM6d_k8Yij7g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ActivityStackSupervisor;

.field private final synthetic f$1:Lcom/android/server/am/ActivityStack;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$x0Vocp-itdO3YPTBM6d_k8Yij7g;->f$0:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$x0Vocp-itdO3YPTBM6d_k8Yij7g;->f$1:Lcom/android/server/am/ActivityStack;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$x0Vocp-itdO3YPTBM6d_k8Yij7g;->f$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ActivityStackSupervisor$x0Vocp-itdO3YPTBM6d_k8Yij7g;->f$1:Lcom/android/server/am/ActivityStack;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->lambda$removeStack$1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStack;)V

    return-void
.end method
