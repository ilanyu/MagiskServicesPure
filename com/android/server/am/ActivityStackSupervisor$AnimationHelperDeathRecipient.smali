.class final Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnimationHelperDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 2

    .line 5356
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "x1"    # Lcom/android/server/am/ActivityStackSupervisor$1;

    .line 5356
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 5359
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->unregisterMiuiAppTransitionAnimationHelper(Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;)V

    .line 5360
    return-void
.end method
