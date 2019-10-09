.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    .line 854
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 857
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 858
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$5;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setTorch(Z)Z
    invoke-static {v0, v1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    .line 860
    :cond_e
    return-void
.end method
