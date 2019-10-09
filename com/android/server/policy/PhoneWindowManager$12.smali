.class Lcom/android/server/policy/PhoneWindowManager$12;
.super Lcom/android/internal/policy/KeyguardDismissCallback;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$awakenFromDreams:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 4647
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager$12;->val$awakenFromDreams:Z

    invoke-direct {p0}, Lcom/android/internal/policy/KeyguardDismissCallback;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDismissSucceeded$0(Lcom/android/server/policy/PhoneWindowManager$12;Z)V
    .registers 4
    .param p1, "awakenFromDreams"    # Z

    .line 4651
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    .line 4652
    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4650
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$12;->val$awakenFromDreams:Z

    new-instance v2, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$12$I1_9Lvn7T3yzR54mpocYrb9Pc3I;

    invoke-direct {v2, p0, v1}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$12$I1_9Lvn7T3yzR54mpocYrb9Pc3I;-><init>(Lcom/android/server/policy/PhoneWindowManager$12;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4653
    return-void
.end method
